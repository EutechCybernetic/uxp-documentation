# ThemeChanger

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=theme-themechanger--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ThemeChanger live demo"
></iframe>



A floating dropdown menu that allows users to change the active theme.



## Installation

```tsx
import { ThemeChanger } from 'uxp/components';
```

## Signature

```tsx
const ThemeChanger: React.FunctionComponent<IThemeChangerProps>
```

## Examples

```tsx
tsx
<ThemeChanger
  themeName="dark"
  onChangeTheme={(theme) => console.log("Theme changed:", theme)}
  position="bottom-left"
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|themeName|string|No|-|-|
|onChangeTheme|(themeName: string) => void|No|-|-|
|rootElementId|string|No|-|-|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|

## Related Types

- [IThemeChangerProps](../types/IThemeChangerProps.md)
- [DropdownPosition](../types/DropdownPosition.md)

