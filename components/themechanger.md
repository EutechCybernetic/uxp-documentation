# ThemeChanger


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
|position|[Position](../types/Position.md)|No|-|-|

## Related Types

- [IThemeChangerProps](../types/IThemeChangerProps.md)
- [Position](../types/Position.md)

