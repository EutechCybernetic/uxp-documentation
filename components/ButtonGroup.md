# ButtonGroup


A component that renders a group of buttons with optional dropdown support.



## Installation

```tsx
import { ButtonGroup } from 'uxp/components';
```

## Signature

```tsx
const ButtonGroup: React.FunctionComponent<ButtonGroupProps>
```

## Examples

```tsx
<ButtonGroup
  buttons={[
    { id: 'add', title: 'Add', leftIcon: 'fas fa-plus' },
    { id: 'edit', title: 'Edit', leftIcon: 'fas fa-edit' }
  ]}
  activeId="add"
  onButtonClick={(id) => console.log('Clicked:', id)}
/>
```

```tsx
<ButtonGroup
  buttons=[
    { id: 'add', title: 'Add', leftIcon: 'fas fa-plus', onClick: () => console.log('Add clicked') },
    {
      id: 'more',
      title: 'More',
      leftIcon: 'fas fa-ellipsis-h',
      dropdownContent: (
        <div>
          <div>Option 1</div>
          <div>Option 2</div>
        </div>
      ),
      dropdownPosition: 'bottom-right',
      showAnchor: true
    }
  ]
  variant="primary"
  activeId="add"
  className="custom-button-group"
  styles={{ margin: '10px' }}
  onButtonClick={(id) => console.log('Button clicked:', id)}
/>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=buttons-buttongroup--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ButtonGroup live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=buttons-buttongroup--default&amp;viewMode=story&amp;args=activeId%3Aadd&amp;props=%7B%22buttons%22%3A%5B%7B%22id%22%3A%22add%22%2C%22title%22%3A%22Add%22%2C%22leftIcon%22%3A%22fas+fa-plus%22%7D%2C%7B%22id%22%3A%22edit%22%2C%22title%22%3A%22Edit%22%2C%22leftIcon%22%3A%22fas+fa-edit%22%7D%5D%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ButtonGroup: Example 1"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|buttons|[ButtonGroupItem[]](../types/ButtonGroupItem.md)|Yes|-|[ { id: 'day', title: 'Day' }, { id: 'week', title: 'Week' }, { id: 'month', ti…|
|activeId|string|No|-|"week"|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|'secondary'|-|
|className|string|No|-|-|
|styles|React.CSSProperties|No|-|-|
|onButtonClick|(buttonId: string) => void|No|-|Log the id onButtonClick={(buttonId) => console.log('clicked', buttonId)}|

## Related Types

- [ButtonGroupProps](../types/ButtonGroupProps.md)
- [ButtonGroupItem](../types/ButtonGroupItem.md)
- [ButtonComponentProps](../types/ButtonComponentProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ButtonComponentType](../types/ButtonComponentType.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)
- [ButtonComponentSize](../types/ButtonComponentSize.md)
- [ButtonComponentMode](../types/ButtonComponentMode.md)
- [ButtonComponentTextMode](../types/ButtonComponentTextMode.md)
- [DropdownPosition](../types/DropdownPosition.md)

