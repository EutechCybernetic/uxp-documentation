# useDragSensors

The drag-and-drop sensors for every sortable list, table and tree. A mouse drags after moving
`mouseDistance` px (default 8; 0 drags at once). A finger drags after holding `DRAG_HOLD_MS`, so scrolling and swiping never start a drag.



## Installation

```tsx
import { useDragSensors } from 'uxp/components';
```

## Signature

```tsx
function useDragSensors(options?: { keyboard?: Parameters<typeof useSensor>[1], mouseDistance?: number }): SensorDescriptor<SensorOptions>[]
```

## Examples

```tsx
tsx
const sensors = useDragSensors({ keyboard: { coordinateGetter: sortableKeyboardCoordinates } }); // keyboard is optional
<DndContext sensors={sensors} ...>
```

