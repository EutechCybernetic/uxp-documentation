# InfoButton


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

## Live preview

[Open InfoButton in the playground →](<https://story.uxp.iviva.com/?path=/docs/overlays-infobutton--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/overlays-infobutton--docs&props=%7B%22content%22%3A%22This+field+is+required.%22%7D>)
- [Example 2](<https://story.uxp.iviva.com/?path=/docs/overlays-infobutton--docs&args=position%3Abottom-left&props=%7B%22content%22%3A%5B%22Must+be+at+least+8+characters%22%2C%22No+spaces+allowed%22%5D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|content|string \| React.ReactNode \| string[]|Yes|-|"Energy is measured by the main meter every 15 minutes."|
|position|[InfoButtonPosition](../types/InfoButtonPosition.md)|No|-|-|
|size|'default' \| 'small'|No|-|-|

## Related Types

- [InfoButtonProps](../types/InfoButtonProps.md)
- [InfoButtonPosition](../types/InfoButtonPosition.md)
- [DropdownPosition](../types/DropdownPosition.md)

