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

#### Basic usage with button

```tsx
tsx
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

#### With custom title and messages

```tsx
tsx
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

#### In an action list

```tsx
tsx
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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=buttons-deleteaction--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DeleteAction live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|model|string|Yes|-|"Location.Location"|
|objectKey|string \| number|Yes|-|"1001"|
|children|(deleteHandler: () => Promise<void>) => React.ReactNode|Yes|-|Delete button (deleteHandler) => <Button title="Delete" icon="fas trash" onClic…|

## Related Types

- [DeleteActionProps](../types/DeleteActionProps.md)
- [DeleteActionParams](../types/DeleteActionParams.md)

