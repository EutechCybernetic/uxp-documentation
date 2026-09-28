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

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=overlays-helppopover--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="HelpPopover live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=overlays-helppopover--default&amp;viewMode=story&amp;args=title%3AHow+Navigation+Works&amp;props=%7B%22sections%22%3A%5B%7B%22heading%22%3A%22Master+Links%22%2C%22body%22%3A%22The+single+source+of+truth+for+all+navigation+items.%22%7D%2C%7B%22heading%22%3A%22Navigation+Profiles+vs+User+Groups%22%2C%22body%22%3A%22A+profile+is+a+curated+subset+of+master+links+for+a+user+group.%22%7D%5D%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="HelpPopover: Example 1"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|"Energy dashboard"|
|sections|[HelpSection[]](../types/HelpSection.md)|Yes|-|[ { heading: 'What it shows', body: 'Energy use per building, updated every 15 …|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|icon|string|No|-|-|
|variant|[ButtonComponentVarient](../types/ButtonComponentVarient.md)|No|-|-|

## Related Types

- [HelpPopoverProps](../types/HelpPopoverProps.md)
- [HelpSection](../types/HelpSection.md)
- [DropdownPosition](../types/DropdownPosition.md)
- [ButtonComponentVarient](../types/ButtonComponentVarient.md)

