# SlideInPanel

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=other-slideinpanel--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="SlideInPanel live demo"
></iframe>



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
|beforeDismiss|(source: 'backdrop' \| 'escape') => boolean \| Promise<boolean>|No|-|-|
|mode|[SlideInPanelMode](../types/SlideInPanelMode.md)|No|-|-|
|direction|[SlideInPanelDirection](../types/SlideInPanelDirection.md)|No|-|-|
|width|string|No|-|-|
|height|string|No|-|-|
|className|string|No|-|-|
|wrapperClassName|string|No|-|-|
|unmountOnExit|boolean|No|-|-|
|containerRef|RefObject<HTMLElement>|No|-|-|
|borderRadius|string|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|close|() => void|Programmatically close the panel |

