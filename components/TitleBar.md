# TitleBar

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=other-titlebar--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="TitleBar live demo"
></iframe>


Use this to show a title area on widgets. You can set a title on the left side
and any arbitrary content on the right side - typically you would use a {@component FilterPanel} there.
The content that appears on the right side go as children of this component.




## Installation

```tsx
import { TitleBar } from 'uxp/components';
```

## Signature

```tsx
const TitleBar: React.FunctionComponent<IWidgetTitleBarProps>
```

## Examples

```tsx
<TitleBar title='My Test Widget'>
     <div>Active</div>
</TitleBar>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|-|
|icon|string|No|-|-|
|className|string|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IWidgetTitleBarProps](../types/IWidgetTitleBarProps.md)

