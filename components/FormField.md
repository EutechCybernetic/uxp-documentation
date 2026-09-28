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

#### TODO: More Examples

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=forms-formfield--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="FormField live preview"
></iframe>

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
|children|React.ReactNode|No|-|Label and input <> <Label>Asset name</Label> <Input value="Chiller 01" onChange…|

## Related Types

- [IFormFieldProps](../types/IFormFieldProps.md)

