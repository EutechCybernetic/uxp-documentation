# In-App Notification System

Central in-app notification system across all apps - accessible on the header.

## Core Concepts and Statuses

- **Category:** A named group (e.g., Maintenance) shown as a tab in the notification center.
- **ObjectType:** A string tag (e.g., `elevator`) that drives routing to a specific category. This value is normalized to lowercase for storage and matching.
- **Severity:** Controls the colored badge on the notification: `CRITICAL`, `HIGH`, `MEDIUM`, or `LOW`.
- **Wildcard Category:** A category with empty Object Types, designed to catch all notifications not matched by any specific category.
- **Priority:** The order of categories (lower number = higher priority), which controls which category wins in the First-Match Mode.
- **InternalState:** Reflects the source system's internal lifecycle (e.g., `Acknowledged`, `Assigned`), separate from the system's `Status` (`NEW`/`RESOLVED`).
- **Read State:** Tracked *per-user* and is independent of the notification's status.

## Category Configuration and Routing

Configuration is managed via **Administration > Notifications > Settings**.

- **Setup:** Categories are defined with a Label, Icon, and the specific list of **Object Types** they accept. Leaving Object Types empty creates a **Wildcard** category.
- **Priority:** Categories can be reordered via drag-and-drop in the UI, setting the priority (top is highest priority).
- **Routing Logic (Mode Toggle):** This determines how notifications are assigned to categories:
  - **First-Match (Default/Off):** Each notification is counted in only the **highest-priority** category whose Object Types list includes the notification's `objectType`.
  - **All-Match (Toggle On):** The notification is counted in *every* matching category.
- **Visibility Filtering:** Notification visibility is controlled by **OR** logic: (User belongs to an `AllowedUserGroupKeys` on the category) **OR** (User is listed in the notification's `AllowedUserKeys`). If both are empty, the notification is visible to everyone.
- **Testing focus:** create a category for object type `elevator` restricted to user group A, a second category for the same object type, and a wildcard category. Publish an `elevator` notification and another with an unmatched object type: in First-Match mode the first counts only in the higher-priority category and the second only in the wildcard; switch to All-Match and the first counts in both elevator categories. Drag the categories into a new order and confirm First-Match follows it. Check the bell as a member of group A and as a user outside it (sees only notifications that list them in `AllowedUserKeys` or come from unrestricted categories).

## Publishing and Updating Notifications

Use the `System.UpsertNotification` service to manage notifications.

**Creation/Update Logic:** The service uses a stable, unique `notificationId` to check if a notification already exists.

- If new, it's created.
  - If the `notificationId` exists, it updates *only* the fields provided in the call (e.g., update `internalState` or `message`).
- **Resolving:** Set the `status` parameter to `RESOLVED` to automatically record the resolution date and user.
- **Example (Create):** Requires `notificationId`, `objectType`, `severity`, and `message`.

```shell
curl -X POST "<BASE_URL>/api/System/UpsertNotification" \
-H "Authorization: APIKEY <API_KEY>" \
--form "notificationId=elevator/B1-LIFT-01/TEST-001" \
--form "objectType=elevator" \
--form "severity=HIGH" \
--form "message=Elevator B1-LIFT-01 door sensor fault"
```

## Real-Time Delivery and UI Update

The system provides real-time updates to the notification center (bell icon).

- **Real-time Delivery:** Every `UpsertNotification` call publishes an event (`new`, `resolved`, or `updated`) to the `iviva_notification_bridge_updates` MessageBus channel.
- **Frontend Update:** The frontend listens via a SignalR WebSocket, and any message triggers an immediate data (count) refresh.
- **Fallback:** A polling mechanism performs a background refresh every 5 minutes.
- **Notification Center UI:**
  - The Bell Badge shows the total unread count across all visible categories, capped at **99+**.
  - Notification rows display a color-coded Severity badge and a message that clamps to two lines, with an option to expand.
  - Category tabs get scroll arrows when they overflow; the unread/severity footer stays pinned (panel capped to viewport height).
  - Timestamps render in the site's timezone and date format.
- **Testing focus:** with the notification center open, create, update and resolve a notification with the same `notificationId`; the badge and list update without a reload each time. Publish more than 99 unread notifications and confirm the badge reads 99+. Mark one read as one user and confirm it is still unread for another.

# User Inbox (NEW)

A per-user message inbox inside the platform.

- **Location:** **User app > My Inbox** (`/view/user/inbox`); also linked from the user profile dropdown.
- **Folders & Actions:** Inbox and Sent Items folders, search, paging, hide/unhide messages, details panel driven by the URL (links are shareable and survive reload).
- **Bell Integration:** Every inbox message also raises an in-app bell notification that deep-links to the message.
- **Plain Text Only:** The inbox shows the plain-text body by design. The Email Queue keeps its HTML preview and type chip — this difference is intentional, not a bug.
- **Testing Focus:** send a message to a test user, confirm it appears in their Inbox and the sender's Sent Items, that the bell notification opens the message, that hiding and unhiding work, and that the message URL reopens the same details after a reload.
