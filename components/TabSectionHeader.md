# TabSectionHeader


The header at the top of a tab's content: a title with the tab's buttons on the right.
On phones the tab slider already names the tab, so the title hides and the buttons move into
the slider as icons (a button shows its icon, its title becomes the tooltip). No phone code
is needed in the app.



## Installation

```tsx
import { TabSectionHeader } from 'uxp/components';
```

## Signature

```tsx
const TabSectionHeader: React.FunctionComponent<TabSectionHeaderProps>
```

## Examples

```tsx
tsx
<TabComponent tabs={[{ id: 'keys', label: 'API keys', content: <>
    <TabSectionHeader title="My API keys" actions={<Button title="Generate key" leftIcon="fal key" onClick={generate} />} />
    <KeysTable />
</> }]} selected={tab} onChangeTab={setTab} />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|ReactNode|No|-|"API keys"|
|actions|ReactNode|No|-|-|
|section|boolean|No|-|-|
|className|string|No|-|-|

## Related Types

- [TabSectionHeaderProps](../types/TabSectionHeaderProps.md)

