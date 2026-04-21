# FormField


This is a generic field used to layout forms. Typically used in conjunction with `<Label>` to show a field with a label



## Installation

```tsx
import { FormField } from 'uxp/components';
```

## Signature

```tsx
const FormField: React.FunctionComponent<IFormFieldProps>
```

## Examples

```tsx
<FormField inline>
      <Label>Button (active)</Label>
      <Button
          title="Sample Button"
          onClick={() => alert("clicked")}
          icon="https://static.iviva.com/images/Adani_UXP/QR_badge_icon.svg"
          active
      />
  </FormField>
```

```tsx
TODO: More Examples
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|inline|boolean|No|-|-|
|className|string|No|-|-|
|backgroundColor|string|No|-|-|
|style|React.CSSProperties|No|-|-|
|noPadding|boolean|No|-|-|
|noMargin|boolean|No|-|-|
|marginBottomOnly|boolean|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IFormFieldProps](../types/IFormFieldProps.md)

