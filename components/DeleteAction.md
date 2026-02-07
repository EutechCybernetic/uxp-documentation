# DeleteAction


Declarative component wrapper for delete actions

Provides a render-prop pattern for triggering delete actions with
automatic dependency checking and confirmation dialogs.



## Installation

```tsx
import { DeleteAction } from 'uxp/components';
```

## Signature

```tsx
const DeleteAction: React.FunctionComponent<DeleteActionProps>
```

## Examples

```tsx
Basic usage with button
```tsx
<DeleteAction
  model="Location.Location"
  objectKey={locationKey}
  canHide={true}
  onSuccess={(action) => {
    if (action === 'delete') {
      navigate('/locations');
    }
  }}
>
  {(handleDelete) => (
    <Button onClick={handleDelete}>Delete Location</Button>
  )}
</DeleteAction>
```

```tsx
With custom title and messages
```tsx
<DeleteAction
  model="User.User"
  objectKey={userId}
  deleteTitle="Delete User"
  deleteMessage="Are you sure you want to delete this user?"
  onSuccess={() => refetch()}
>
  {(handleDelete) => (
    <IconButton icon="fas trash" onClick={handleDelete} />
  )}
</DeleteAction>
```

```tsx
In an action list
```tsx
<ActionList>
  <DeleteAction
    model="Equipment.Equipment"
    objectKey={equipmentKey}
    canHide={true}
    onSuccess={() => reloadTable()}
  >
    {(handleDelete) => (
      <ActionItem
        icon="fas trash"
        label="Delete"
        onClick={handleDelete}
      />
    )}
  </DeleteAction>
</ActionList>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|model|string|Yes|-|-|
|objectKey|string \| number|Yes|-|-|
|children|(deleteHandler: () => Promise<void>) => React.ReactNode|Yes|-|-|

## Related Types

- [DeleteActionProps](../types/DeleteActionProps.md)
- [DeleteActionParams](../types/DeleteActionParams.md)

