# SlideInPanel


A component that renders a slide-in panel with animated transitions and a backdrop.



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
|direction|[SlideInPanelDirection](../types/SlideInPanelDirection.md)|No|-|-|
|className|string|No|-|-|
|wrapperClassName|string|No|-|-|
|unmountOnExit|boolean|No|-|-|
|containerRef|RefObject<HTMLElement>|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|close|() => void|Programmatically close the panel |

