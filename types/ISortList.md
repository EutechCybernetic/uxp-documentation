# ISortList

## Definition

```tsx
interface ISortList {
    /**
     * @example
     * [
     *   { id: 1, name: 'Chiller 01', location: 'Level 1' },
     *   { id: 2, name: 'Chiller 02', location: 'Level 1' },
     *   { id: 3, name: 'AHU 01', location: 'Level 2' },
     *   { id: 4, name: 'AHU 02', location: 'Level 2' },
     *   { id: 5, name: 'Pump 01', location: 'Basement' },
     *   { id: 6, name: 'Boiler 01', location: 'Roof' },
     * ]
     */
    items: Array<any>,
    /**
     * @example Name and location
     * ```tsx
     * renderItem={(item, i) => <div>{item.name} · {item.location}</div>}
     * ```
     */
    renderItem: (item: any, i: number) => JSX.Element,
    /**
     * @example Log the order
     * ```tsx
     * onSort={(list) => console.log('new order', list.map((x) => x.name))}
     * ```
     */
    onSort: (list: any) => void,
    disableSort?: boolean
}
```

## Usage

```tsx
import { ISortList } from 'uxp/components';
```

