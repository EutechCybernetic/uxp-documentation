# IItemListCardProps

## Definition

```tsx
interface IItemListCardProps {
    /** The title to show on the card */
    title: string,

    /**
     * Any optional subtitle content to render. This should be a function that returns a react node
     */
    renderSubTitle?: () => JSX.Element,

    /**
     * The object to render in the card
     */
    item: any,

    /**
     * The list of fields from within the object that should be shown.
     * For each field in this list - one line gets rendered on the card
     */
    fields: string[],

    /** An optional function to control rendering of each field. It takes the item as a parameter along with the name of the field being rendered.
     * You can choose to render whatever you want here
     */
    renderField?: (object: any, field: string, key: number) => JSX.Element,

    /**
     * Any background tint to apply to the card. This must be in #RRGGBB hexadecimal format.
     */
    backgroundColor?: string

    /**
     * Any additional css classes to apply to the component
     */
    className?: string
}
```

## Usage

```tsx
import { IItemListCardProps } from 'uxp/components';
```

