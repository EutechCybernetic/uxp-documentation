# ButtonGroup

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=buttons-buttongroup--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ButtonGroup live demo"
></iframe>



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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|buttons|[ButtonGroupItem[]](../types/ButtonGroupItem.md)|Yes|-|-|
|activeId|string|No|-|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|-|-|
|className|string|No|-|-|
|styles|React.CSSProperties|No|-|-|
|onButtonClick|(buttonId: string) => void|No|-|-|

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
- [DropdownPosition](../types/DropdownPosition.md)

