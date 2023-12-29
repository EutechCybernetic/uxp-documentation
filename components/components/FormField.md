# FormField




This is a generic field used to layout forms. Typically used in conjunction with `<Label>` to show a field with a label



## Installation



```tsx
import {FormField} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|inline|boolean|Set this to true to have multiple fields in a single horizontal line |
|className|string|Any extra css classes to attach to the field |
|backgroundColor|string|A background color to set for the field |
### inline



---



Set this to true to have multiple fields in a single horizontal line


|type|
|-|
|boolean|
### className



---



Any extra css classes to attach to the field


|type|
|-|
|string|
### backgroundColor



---



A background color to set for the field


|type|
|-|
|string|
