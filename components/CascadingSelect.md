# CascadingSelect

A two-level cascading select.
Selecting a value in the primary dropdown loads options for the secondary dropdown.
The final value is a combination of both selections joined by `separator` (default `:`)
e.g. primary = "System", secondary = "Admin"  →  value = "System:Admin"



## Installation

```tsx
import { CascadingSelect } from 'uxp/components';
```

## Signature

```tsx
const CascadingSelect: React.FunctionComponent<CascadingSelectProps>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|primaryOptions|any[]|Yes|-|-|
|primaryLabelField|string|No|-|-|
|primaryValueField|string|No|-|-|
|primaryPlaceholder|string|No|-|-|
|getSecondaryOptions|(primaryValue: string) => Promise<any[]>|Yes|-|-|
|secondaryLabelField|string|No|-|-|
|secondaryValueField|string|No|-|-|
|secondaryPlaceholder|string|No|-|-|
|selected|string \| null|No|-|-|
|onChange|(combined: string \| null, primary: string, secondary: string) => void|Yes|-|-|
|separator|string|No|-|-|
|className|string|No|-|-|
|fullWidth|boolean|No|-|-|
|unified|boolean|No|-|-|

## Related Types

- [CascadingSelectProps](../types/CascadingSelectProps.md)
- [InputStateProps](../types/InputStateProps.md)

