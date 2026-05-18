# DynamicSelect

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-dynamicselect--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="DynamicSelect live demo"
></iframe>





This component is used to create a select box with pagination (infinite scrolling) & search/filter options.
Support keyboard interactions
 - Arrow Keys (up & down) - navigate through options list
 - Enter Key - Select current highlighted option
 - Escape Key - Exit select mode & discard changes


## Installation

```tsx
import { DynamicSelect } from 'uxp/components';
```

## Signature

```tsx
const DynamicSelect: React.FunctionComponent<IDynamicSelectProps>
```

## Examples

```tsx
<DynamicSelect
     selected={selected}
     options={(max: number, pageToken: string, args?: any) => getOptions(max, pageToken, args)}
     onChange={(value) => { setSelected(value)}}
     placeholder=" -- select --"
     labelField="label"
     timeout={500}
 />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|options|[IDynamicSelectDataFunction](../types/IDynamicSelectDataFunction.md)|Yes|-|-|
|selected|string|Yes|-|-|
|onChange|(value: any) => void|Yes|-|-|
|placeholder|string|No|-|-|
|className|string|No|-|-|
|isValid|boolean|No|-|-|
|pageSize|number|No|-|-|
|renderOption|(item: any, key: number) => JSX.Element|No|-|*|
|labelField|string|Yes|-|-|
|iconField|string|No|-|-|
|timeout|number|No|-|-|
|type|"search-box" \| "select-box"|No|-|-|
|showEndOfContent|boolean|No|-|-|

## Related Types

- [IDynamicSelectProps](../types/IDynamicSelectProps.md)
- [IDynamicSelectDataFunction](../types/IDynamicSelectDataFunction.md)

