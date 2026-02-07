# IRenderMarkerPopup


Render a popup for marker


## Definition

```tsx
export interface IRenderMarkerPopup {
    /**
     * content to show in popup
     */
    content: () => JSX.Element,
    /**
     * open the popup on load
     */
    showOnLoad?: boolean
}
```

## Usage

```tsx
import { IRenderMarkerPopup } from 'uxp/components';
```

## Examples

```tsx
tsx
renderPopup={{
  content: () => <div>Popup content</div>,
  showOnLoad: true
}}
```

