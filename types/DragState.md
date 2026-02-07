# DragState

## Definition

```tsx
export interface DragState {
    /** Global state: true if any drag operation is happening in the system */
    isDragging: boolean;
    /** Local state: true if this tree is the drag source */
    isDragSource?: boolean;
    /** id of the dragged node */
    draggedNodeId?: string;
    /** id of the node dropzone (hovering at the moment)  */
    dropzoneNodeId?: string;
    /** position of the drop */
    dropPosition?: DropPosition
}
```

## Usage

```tsx
import { DragState } from 'uxp/components';
```

## Related Types

- [DropPosition](../types/DropPosition.md)

