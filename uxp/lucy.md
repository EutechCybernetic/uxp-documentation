# Talking to Lucy

Components reach the backend through the [context object](./context.md). You call model actions and app
services directly; there is no separate API layer to publish first.

## Model actions

`executeAction(model, action, parameters, options?)` runs an action on a Lucy model and resolves with the
result.

```tsx
const result = await props.uxpContext.executeAction(
    'User',
    'GetEmail',
    { userId: 'admin' },
    { json: true }
);
```

`{ json: true }` parses the response into an object rather than handing back the raw string.

## App services

`executeService(app, service, parameters, options?)` runs a service published by an app.

```tsx
const result = await props.uxpContext.executeService(
    'Energy',
    'GetSiteTotals',
    { siteKey: '12', days: 30 }
);
```

## The Safe variants

Both have a `Safe` counterpart that never throws. Instead of rejecting, it resolves with an
[`ExecutionResult`](../types/ExecutionResult.md):

```ts
{ data: T | null, error?: any, errorMessage?: string }
```

So a failed call becomes a branch rather than a `try`/`catch`, and the message is already extracted:

```tsx
const { data, error, errorMessage } = await props.uxpContext.executeServiceSafe<SiteTotals>(
    'Energy',
    'GetSiteTotals',
    { siteKey, days }
);

if (error) {
    toast.error(errorMessage);
    return;
}
setTotals(data);
```

Prefer these in new code. The same pattern covers the rest of the family:
`executeActionSafe`, `executeServiceSafe`, `executeModelCollectionServiceSafe`, `executeQuerySafe`,
`executeMicroServiceSafe` and `executeAPISafe`.

## One thing worth knowing about results

A service or model action that returns a dictionary reaches the frontend as a one-row array of strings, not
as an object. Read `data[0]`, and convert the fields you need. A service that returns a list reaches you as
the list you expect.

## Paged lists

`fromLucyDataCollection(model, collection)` returns a paging function in exactly the shape `DataList`,
`DataTable` and `DynamicList` take, so a long collection can be wired to a list with no glue code:

```tsx
<DataList
    data={props.uxpContext.fromLucyDataCollection('WorkOrder', 'All')}
    renderItem={renderItem}
    pageSize={20}
/>
```

## In app code, use service configs

The calls above are the primitives, and they are the right thing in a small widget or a standalone bundle.
Inside an iviva app, declare your calls as service configs in `services.ts` and execute them with
`useExecuteRequest`, `executeConfig` or `useExecuteRequestCallback`. You get loading and error state,
caching, deduplication and one place where every call the app makes is listed.

[Data fetching](../v5/data-fetching.md) covers that pattern in full.

## Where to go next

- [The context](./context.md): every method the context exposes
- [Data fetching](../v5/data-fetching.md): service configs and the hooks that run them
- [Real-time messaging](./messagebus.md): getting told when data changes instead of polling for it
