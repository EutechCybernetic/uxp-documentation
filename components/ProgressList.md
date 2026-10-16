# ProgressList


A numbered, vertical list of items with a state for each one. Use it for anything that happens to
several items in turn: before the work it is the plan, during the work it shows each item's
progress, and afterwards it is the result.

Each item shows a marker (its number while pending, then a spinner, a check, a cross or a dash),
a title, optional detail lines, a status message and an optional action button.



## Installation

```tsx
import { ProgressList } from 'uxp/components';
```

## Signature

```tsx
const ProgressList: React.FunctionComponent<IProgressListProps>
```

## Examples

```tsx
<ProgressList
    items={[
        { id: 'one', title: 'Building.Dashboard.json', lines: ['Building', 'Level 1'], status: 'done', message: 'Downloaded' },
        { id: 'two', title: 'Energy.Dashboard.json', lines: ['Energy'], status: 'running' },
        { id: 'three', title: 'Access.Dashboard.json', lines: ['Access'], status: 'pending' },
    ]}
/>
```

```tsx
<ProgressList
    items={[
        {
            id: 'models',
            title: 'Models',
            lines: ['Work Request', 'Asset'],
            status: 'failed',
            message: 'The model Asset already exists.',
            action: { label: 'Try again', icon: 'fas rotate-right', onClick: () => retry('models') },
        },
    ]}
/>
```

## Live preview

[Open ProgressList in the playground →](<https://story.uxp.iviva.com/?path=/docs/display-status-progresslist--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/display-status-progresslist--docs&props=%7B%22items%22%3A%5B%7B%22id%22%3A%22one%22%2C%22title%22%3A%22Building.Dashboard.json%22%2C%22lines%22%3A%5B%22Building%22%2C%22Level+1%22%5D%2C%22status%22%3A%22done%22%2C%22message%22%3A%22Downloaded%22%7D%2C%7B%22id%22%3A%22two%22%2C%22title%22%3A%22Energy.Dashboard.json%22%2C%22lines%22%3A%5B%22Energy%22%5D%2C%22status%22%3A%22running%22%7D%2C%7B%22id%22%3A%22three%22%2C%22title%22%3A%22Access.Dashboard.json%22%2C%22lines%22%3A%5B%22Access%22%5D%2C%22status%22%3A%22pending%22%7D%5D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|items|[IProgressListItem[]](../types/IProgressListItem.md)|Yes|-|-|
|className|string|No|-|-|

## Related Types

- [IProgressListProps](../types/IProgressListProps.md)
- [IProgressListItem](../types/IProgressListItem.md)
- [ProgressListStatus](../types/ProgressListStatus.md)

