# IItemListCardProps

## Definition

```tsx
interface IItemListCardProps {
    /**
     * The title to show on the card
     * @example "Chiller 01"
     */
    title: string,

    /**
     * Any optional subtitle content to render. This should be a function that returns a react node
     */
    renderSubTitle?: () => JSX.Element,

    /**
     * The object to render in the card
     * @example { status: 'Running', location: 'Level 1 · Plant room', load: '72%' }
     */
    item: any,

    /**
     * The list of fields from within the object that should be shown.
     * For each field in this list - one line gets rendered on the card
     * @example ['status', 'location', 'load']
     */
    fields: string[],

    /** An optional function to control rendering of each field. It takes the item as a parameter along with the name of the field being rendered.
     * You can choose to render whatever you want here
     * @example Field and value
     * ```tsx
     * renderField={(object, field, key) => <div key={key}><b>{field}</b>: {object[field]}</div>}
     * ```
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

