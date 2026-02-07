# FontAwesomeIconWrapper



Wrapper for FontAwesomeIcon component.
This will show a loading state(skeleton loader) untill the icon is ready/available, then render the actual icon

Usage is the same as FontAwesomeIcon, additionally you can donfigure how skeleton loeader will render `skeletonLoader`



## Installation

```tsx
import { FontAwesomeIconWrapper } from 'uxp/components';
```

## Signature

```tsx
const FontAwesomeIconWrapper: React.FunctionComponent<FontAwesomIconWrapperProps>
```

## Examples

```tsx
<FontAwesomeIconWrapper
   icon={['fal', 'bars']}
/>
```

```tsx
<FontAwesomeIconWrapper
   icon={['fal', 'bars']}
   skeletonLoader={{
      width: '100%',
      height: '100%',
      additionalStyle={{
         borderRadius: '50%',
         aspectRatio: '1'
     }}
   }}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|skeletonLoader|[SkeletonLoaderProps](../types/SkeletonLoaderProps.md)|No|-|-|

## Related Types

- [FontAwesomIconWrapperProps](../types/FontAwesomIconWrapperProps.md)
- [FontAwesomeIconProps](../types/FontAwesomeIconProps.md)
- [BaseIconProps](../types/BaseIconProps.md)
- [AnimationProps](../types/AnimationProps.md)
- [SkeletonLoaderProps](../types/SkeletonLoaderProps.md)

