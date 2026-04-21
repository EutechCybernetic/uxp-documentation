# SlideInPanel


A component that renders a slide-in panel with animated transitions and a backdrop.
Supports two modes:
- `full`: fills the main content area (default)
- `modal`: centered overlay, auto-sized to content



## Installation

```tsx
import { SlideInPanel } from 'uxp/components';
```

## Signature

```tsx
const SlideInPanel: React.MemoExoticComponent<React.ForwardRefExoticComponent<React.RefAttributes<SlideInPanelHandlers> & SlideInPanelProps>>
```

## Examples

```tsx
// Full mode (default)
<SlideInPanel isOpen={isOpen} onClose={() => setIsOpen(false)}>
  <div>Panel Content</div>
</SlideInPanel>
```

```tsx
// Modal mode — auto-sized
<SlideInPanel mode="modal" isOpen={isOpen} onClose={() => setIsOpen(false)}>
  <div>Modal Content</div>
</SlideInPanel>
```

```tsx
// Modal mode — explicit size
<SlideInPanel mode="modal" width="500px" height="400px" isOpen={isOpen} onClose={() => setIsOpen(false)}>
  <div>Modal Content</div>
</SlideInPanel>
```

```tsx
// Full mode with containerRef
const containerRef = useRef<HTMLDivElement>(null);
const panelRef = useRef<SlideInPanelHandlers>(null);

<div ref={containerRef} style={{ width: 400, height: 300 }}>
  Container content
</div>

<SlideInPanel
  isOpen={true}
  onClose={() => console.log('Closed')}
  containerRef={containerRef}
  ref={panelRef}
>
  <div>Panel Content</div>
</SlideInPanel>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|children|ReactNode|Yes|-|-|
|isOpen|boolean|Yes|-|-|
|onClose|() => void|Yes|-|-|
|mode|[SlideInPanelMode](../types/SlideInPanelMode.md)|No|-|-|
|direction|[SlideInPanelDirection](../types/SlideInPanelDirection.md)|No|-|-|
|width|string|No|-|-|
|height|string|No|-|-|
|className|string|No|-|-|
|wrapperClassName|string|No|-|-|
|unmountOnExit|boolean|No|-|-|
|containerRef|RefObject<HTMLElement>|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|close|() => void|Programmatically close the panel |

