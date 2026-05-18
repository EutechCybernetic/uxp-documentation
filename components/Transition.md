# Transition

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=transition--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Transition live demo"
></iframe>



A component that applies enter/exit transition animations to a single child element.



## Installation

```tsx
import { Transition } from 'uxp/components';
```

## Signature

```tsx
const Transition: React.FunctionComponent<TransitionProps>
```

## Examples

```tsx
<Transition in={true} duration={300} className="fade">
  <div>Content</div>
</Transition>
```

```tsx
<Transition
  in={false}
  duration={500}
  className="slide"
  unmountOnExit={true}
>
  <div style={{ background: '#f0f0f0', padding: '10px' }}>
    Animated Content
  </div>
</Transition>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|children|React.ReactElement|Yes|-|-|
|className|string|Yes|-|-|
|in|boolean|Yes|-|-|
|duration|number|Yes|-|-|
|unmountOnExit|boolean|No|-|-|

## Related Types

- [TransitionProps](../types/TransitionProps.md)

