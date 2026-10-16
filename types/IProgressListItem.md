# IProgressListItem

One item of a ProgressList


## Definition

```tsx
interface IProgressListItem {
    /**
     * A unique id for the item
     * @example "db4"
     */
    id: string;

    /**
     * The heading of the item
     * @example "Dashboard with dependencies.Dashboard.json"
     */
    title: string | React.ReactNode;

    /**
     * Detail lines shown under the title, one below the other. Text or small components such as a Chip
     * @example ["Dashboard with dependencies", "Single Dashboard - Responsive layouts"]
     */
    lines?: Array<string | React.ReactNode>;

    /**
     * The state of the item. It sets the marker: the number, a spinner, a check, a cross or a dash
     * @default "pending"
     */
    status?: ProgressListStatus;

    /**
     * One line about the state, for example "Downloaded" or an error message
     * @example "Downloaded"
     */
    message?: string;

    /**
     * An optional button shown under the item
     */
    action?: {
        label: string;
        icon?: string;
        onClick: () => void | Promise<void>;
    };
}
```

## Usage

```tsx
import { IProgressListItem } from 'uxp/components';
```

## Related Types

- [ProgressListStatus](../types/ProgressListStatus.md)

