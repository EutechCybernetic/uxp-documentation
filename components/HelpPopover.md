# HelpPopover


A self-contained help/info popover — renders a question-mark icon button that
opens a structured panel with a title and ordered sections of heading + body text.
Content is driven by a simple JSON array so no custom JSX or styles are needed.



## Installation

```tsx
import { HelpPopover } from 'uxp/components';
```

## Signature

```tsx
const HelpPopover: React.FunctionComponent<HelpPopoverProps>
```

## Examples

```tsx
tsx
<HelpPopover
  title="How Navigation Works"
  sections={[
    {
      heading: 'Master Links',
      body: 'The single source of truth for all navigation items.',
    },
    {
      heading: 'Navigation Profiles vs User Groups',
      body: 'A profile is a curated subset of master links for a user group.',
    },
  ]}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|-|
|sections|[HelpSection[]](../types/HelpSection.md)|Yes|-|-|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|icon|string|No|-|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|-|-|

## Related Types

- [HelpPopoverProps](../types/HelpPopoverProps.md)
- [HelpSection](../types/HelpSection.md)
- [DropdownPosition](../types/DropdownPosition.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)

