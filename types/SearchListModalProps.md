# SearchListModalProps




## Definition

```tsx
export interface SearchListModalProps extends SearchModalConfig {
    isOpen: boolean;
    onClose: () => void;
    /** Called with the picked row; the modal then closes. Single-select. */
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

