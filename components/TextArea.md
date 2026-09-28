# TextArea


A standard textarea (multi line text box)




## Installation

```tsx
import { TextArea } from 'uxp/components';
```

## Signature

```tsx
const TextArea: React.ForwardRefExoticComponent<React.RefAttributes<ITextAreaInstanceProps> & ITextAreaProps>
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=inputs-text-textarea--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="TextArea live preview"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|value|string|Yes|-|"Replaced the filter and checked the belt tension."|
|onChange|(value: string) => void|Yes|-|-|
|onFocus|() => void|No|-|-|
|onBlur|(vale: string) => void|No|-|-|
|onKeyDown|(e: React.KeyboardEvent<HTMLTextAreaElement>, val: string) => void|No|-|-|
|className|string|No|-|-|
|style|React.CSSProperties|No|-|-|
|tabIndex|number|No|-|-|
|placeholder|string|No|-|-|
|rows|number|No|-|-|
|cols|number|No|-|-|
|onClear|() => void|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|focus|() => void|focus the input |
|getElement|() => React.MutableRefObject<HTMLTextAreaElement>|this will return the <TextArea /> element |

## Related Types

- [ITextAreaProps](../types/ITextAreaProps.md)
- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [ITextAreaInstanceProps](../types/ITextAreaInstanceProps.md)

