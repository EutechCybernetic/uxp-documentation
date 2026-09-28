# SearchListModalProps




## Definition

```tsx
export interface SearchListModalProps extends SearchModalConfig {
    /**
     * @example true
     */
    isOpen: boolean;
    /**
     * @example Log
     * ```tsx
     * onClose={() => console.log('closed')}
     * ```
     */
    onClose: () => void;
    /**
     * Called with the picked row; the modal then closes. Single-select.
     * @example Log
     * ```tsx
     * onSelect={(item) => console.log('selected', item)}
     * ```
     */
    onSelect: (item: any) => void;
}
```

## Usage

```tsx
import { SearchListModalProps } from 'uxp/components';
```

## Related Types

- [SearchModalConfig](../types/SearchModalConfig.md)
- [ForwardedObjectSearchProps](../types/ForwardedObjectSearchProps.md)

