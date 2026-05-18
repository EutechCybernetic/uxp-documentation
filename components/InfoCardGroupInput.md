# InfoCardGroupInput

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=forms-inputs-infocardgroupinput--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="InfoCardGroupInput live demo"
></iframe>



A form input component for selecting multiple items with InfoCard-style presentation.
Similar to MultiSelect but displays selected items as stacked profile images.



## Installation

```tsx
import { InfoCardGroupInput } from 'uxp/components';
```

## Signature

```tsx
const InfoCardGroupInput: React.FunctionComponent<InfoCardGroupInputProps>
```

## Examples

#### Basic usage with static options

```tsx
const [selectedTeams, setSelectedTeams] = useState<string[]>([]);

<InfoCardGroupInput
  options={[
    { name: 'Team A', id: 'team-a' },
    { name: 'Team B', id: 'team-b' }
  ]}
  selected={selectedTeams}
  onChange={(values) => setSelectedTeams(values)}
  labelField="name"
  valueField="id"
/>
```

#### With custom field mappings

```tsx
<InfoCardGroupInput
  options={users}
  selected={selectedUserIds}
  onChange={setSelectedUserIds}
  labelField="fullName"
  valueField="userId"
  fields={{
    image: 'avatar',
    name: 'fullName',
    title: 'fullName',
    subtitle: 'email'
  }}
/>
```

#### In DynamicForm

```tsx
{
  name: 'teamMembers',
  label: 'Team Members',
  type: 'json',
  renderField: (data, onValueChange) => (
    <InfoCardGroupInput
      options={availableUsers}
      selected={data.teamMembers || []}
      onChange={onValueChange}
      labelField="name"
      valueField="id"
    />
  )
}
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|options|IOption[] \| any[] \| IDataFunction|Yes|-|-|
|selected|string[]|Yes|-|-|
|onChange|(values: string[], options?: IOption[] \| any[]) => void|Yes|-|-|
|labelField|string|No|-|-|
|valueField|string|No|-|-|
|fields|[InfoCardFields](../types/InfoCardFields.md)|No|-|-|
|placeholder|string|No|-|-|
|className|string|No|-|-|
|isValid|boolean|No|-|-|
|maxVisible|number|No|-|-|
|size|[Size](../types/Size.md)|No|-|-|
|shape|[Shape](../types/Shape.md)|No|-|-|
|dropdownPosition|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|addButtonLabel|string|No|-|-|
|pageSize|number|No|-|-|
|selectedLabels|string[] \| ((selected: string[]) => Promise<any[]>)|No|-|-|

## Related Types

- [InfoCardGroupInputProps](../types/InfoCardGroupInputProps.md)
- [IOption](../types/IOption.md)
- [IDataFunction](../types/IDataFunction.md)
- [InfoCardFields](../types/InfoCardFields.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)
- [DropdownPosition](../types/DropdownPosition.md)

