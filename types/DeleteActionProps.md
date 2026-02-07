# DeleteActionProps

Props for DeleteAction component


## Definition

```tsx
export interface DeleteActionProps extends Omit<DeleteActionParams, 'model' | 'key'> {
    /**
     * Model name in format "App.Model" (e.g., "Location.Location")
     */
    model: string;

    /**
     * Primary key of the object to delete
     */
    objectKey: string | number;

    /**
     * Render function that receives the delete handler
     * This allows you to use your own button/link component
     */
    children: (deleteHandler: () => Promise<void>) => React.ReactNode;
}
```

## Usage

```tsx
import { DeleteActionProps } from 'uxp/components';
```

## Related Types

- [DeleteActionParams](../types/DeleteActionParams.md)

