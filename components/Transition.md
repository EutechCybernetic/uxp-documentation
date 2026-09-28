# Transition


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

## Live preview

[Open Transition in the playground →](<https://story.uxp.iviva.com/?path=/docs/layout-transition--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|children|React.ReactElement|Yes|-|Box <div style={{ padding: 16, background: '#e3f2fd' }}>Shown with a transition…|
|className|string|Yes|-|"fade"|
|in|boolean|Yes|-|true|
|duration|number|Yes|-|300|
|unmountOnExit|boolean|No|-|-|

## Related Types

- [TransitionProps](../types/TransitionProps.md)

