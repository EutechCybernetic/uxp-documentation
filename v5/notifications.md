# In-App Notifications

Push notifications to the notification center bell. Any widget or backend script can publish and resolve them; the center refreshes in real time via SignalR (no polling).

Two backend services do everything:

- `System.UpsertNotification` — create or update one notification.
- `System.ResolveNotifications` — bulk-mark notifications resolved by a filter.

---

## Build a good `notificationId` (read this first)

`notificationId` is the **stable unique key** for a notification. Reusing the same ID **updates** the existing record instead of creating a duplicate — and it's how you later resolve or update it. Everything hinges on choosing it well.

**Construct it with detail baked in.** Preferred pattern:

```
<objectType>/<objectId>/<unique key of the notification from the parent app>
```

Use the **numeric SQL primary keys** for the object id and the notification's own key — not display codes or GUIDs. The third segment is whatever row uniquely identifies this alert in the source app (e.g. an **escalation key**, alarm key, work-order key).

```
IBMSEquipment/1024/55        # equipment PK 1024, escalation key 55
work-order/4821/9312         # work-order PK 4821, SLA-breach row 9312
```

Why: the ID is globally unique and deterministic — the source app can recompute the exact same ID from its own PKs to update or resolve the notification without storing it anywhere. Avoid random GUIDs or bare object IDs.

---

## `UpsertNotification`

Insert if `notificationId` is new, otherwise update (only the fields you pass). Pass `status: RESOLVED` to resolve a single one inline.

| Parameter | Type | Required | Description |
|---|---|---|---|
| `notificationId` | string | Yes | Stable unique key (see pattern above). |
| `objectType` | string | Yes | Category-routing tag (stored lowercase). |
| `severity` | `CRITICAL` \| `HIGH` \| `MEDIUM` \| `LOW` | No | Visual emphasis. |
| `message` | string | No | Text shown in the list. |
| `status` | `NEW` \| `RESOLVED` | No | Default `NEW`. `RESOLVED` records resolve time + user. |
| `objectKey` | string | No | Numeric SQL primary key of the source object (used in category link templates). |
| `internalState` | string | No | Your own state string, stored as-is. |
| `additionalParams` | string (JSON) | No | Extra metadata for link-template placeholders. |
| `allowedUserKeys` | string (comma-sep) | No | Restrict visibility to these user keys. |

Returns `{ notificationID, created }` (`created` = true if inserted, false if updated).

---

## `ResolveNotifications`

Bulk-marks matching **NEW** notifications as `RESOLVED`. Filters are **AND-combined** and **at least one is required** (it never resolves everything).

| Parameter | Type | Description |
|---|---|---|
| `notificationIds` | string (comma-sep) | Resolve these specific IDs. |
| `objectType` | string | Resolve all NEW of this type. |
| `objectKey` | string | Resolve all NEW for this object. |

Returns `{ success, resolvedCount }`. Only rows currently `NEW` are touched, so a repeat call returns `0`.

---

## Frontend: context methods

```typescript
// Create / update
await context.publishNotification({
    notificationId: 'IBMSEquipment/1024/55', // <type>/<equipment PK>/<escalation key>
    objectType: 'IBMSEquipment',
    severity: 'HIGH',
    message: 'Equipment EQUIP-001 over temperature',
    objectKey: '1024',                       // numeric SQL PK
    additionalParams: { floor: '3', zone: 'B2' }, // serialised for you
});

// Resolve one by id
await context.resolveNotification('IBMSEquipment/1024/55');

// Bulk resolve by filter (AND-combined; at least one filter)
await context.resolveNotifications({ objectKey: '1024' });
await context.resolveNotifications({ objectType: 'IBMSEquipment' });
await context.resolveNotifications({ notificationIds: ['IBMSEquipment/1024/55', 'IBMSEquipment/1024/56'] });
```

All return `ExecutionResult<T>` — check `result.error` / read `result.data`. The wrappers handle JSON-serialising `additionalParams` and comma-joining arrays, and normalise the raw service response.

**Direct call** when you need raw control:

```typescript
await context.executeServiceSafe('System', 'UpsertNotification', {
    notificationId: 'IBMSEquipment/1024/55',
    objectType: 'IBMSEquipment', severity: 'HIGH',
    message: 'Equipment EQUIP-001 over temperature', objectKey: '1024', status: 'NEW',
    additionalParams: JSON.stringify({ floor: '3' }),
}, { json: true });
```

---

## Backend (Lucy Python)

```python
# equipment_key and escalation_key are numeric SQL primary keys
nid = 'IBMSEquipment/{0}/{1}'.format(equipment_key, escalation_key)

# Publish
self.account.ExecuteService('System.UpsertNotification', {
    'notificationId': nid, 'objectType': 'IBMSEquipment',
    'severity': 'HIGH', 'message': 'Equipment ' + str(equipment_key) + ' over temperature',
    'objectKey': str(equipment_key), 'status': 'NEW',
}, env)

# Resolve (bulk, by object)
self.account.ExecuteService('System.ResolveNotifications', {
    'objectKey': str(equipment_key),
}, env)
```

Implementation: `/ivivaweb/SystemApps/System/5.0/PyScripts/AppNotification.py` (iviva-net-core).

> After editing that script, reload it on the server: `GET http://<account>/config/RESET`.

---

## Notes

- **Real-time** — every publish/resolve publishes to the `iviva_notification_bridge_updates` SignalR channel; the center updates the bell count automatically.
- **Categories** are configured by admins; `objectType` routes a notification to its category tab (unmatched types fall into a wildcard catch-all).
- **Link templates** — a category's `DetailsLinkTemplate` can use `{$.notificationID}`, `{$.objectKey}`, `{$.objectType}`, `{$.additionalParams.anyKey}`; supply values via `additionalParams`.

---

## Next Steps

- [Data Fetching](./data-fetching.md) — service configs, `useExecuteRequest`, `executeConfig`
- [Events & Synchronization](./events.md) — EventBus and SignalR
