# InfoButton

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=popups-infobutton--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="InfoButton live demo"
></iframe>



Displays a small circular info icon (ⓘ) that opens a popup on click.
Supports plain text, a list of strings, or any ReactNode as content.
Popup content is constrained to a max width of 25rem and max height of 10rem with scroll.



## Installation

```tsx
import { InfoButton } from 'uxp/components';
```

## Signature

```tsx
const InfoButton: React.FunctionComponent<InfoButtonProps>
```

## Examples

```tsx
tsx
// Plain text
<InfoButton content="This field is required." />
```

```tsx
tsx
// List of strings
<InfoButton content={["Must be at least 8 characters", "No spaces allowed"]} position="bottom-left" />
```

```tsx
tsx
// ReactNode
<InfoButton content={<span>See <a href="#">docs</a> for details</span>} />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|content|string \| React.ReactNode \| string[]|Yes|-|-|
|position|[InfoButtonPosition](../types/InfoButtonPosition.md)|No|-|-|
|size|'default' \| 'small'|No|-|-|

## Related Types

- [InfoButtonProps](../types/InfoButtonProps.md)
- [InfoButtonPosition](../types/InfoButtonPosition.md)
- [DropdownPosition](../types/DropdownPosition.md)

