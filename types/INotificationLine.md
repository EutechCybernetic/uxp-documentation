# INotificationLine


One line inside a NotificationBlock, e.g. one item that was not imported and why


## Definition

```tsx
interface INotificationLine {
    /** A unique id for the line */
    id?: string,
    /** Leading icon, as 'fas name' */
    icon?: string,
    /** Bold text at the start of the line */
    title?: string,
    /** The line's text */
    text?: string,
    /** Chips after the text */
    chips?: { label: string, variant?: ChipVariant }[],
    /** A small button at the end of the line */
    action?: { label: string, icon?: string, onClick: () => void },
    /** A list behind a small dropdown after the text, e.g. "128 pages" with the page ids */
    list?: { label: string, items: (string | { label: string, detail?: string })[] },
}
```

## Usage

```tsx
import { INotificationLine } from 'uxp/components';
```

## Related Types

- [ChipVariant](../types/ChipVariant.md)

