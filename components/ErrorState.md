# ErrorState


Themed error/warning state with three levels of prominence.

`mode` is a **maximum**, not a fixed layout: the component measures its container
and degrades to fit — `default` → `inline` → `indicator` — so a card dropped into
a small widget tile becomes a row, then an icon. It never upgrades, and while the
container size is still unknown it renders the requested mode.

Renders without a UXP context — pass every string in and it is safe to use from
error boundaries and other places where the provider may be missing.



## Installation

```tsx
import { ErrorState } from 'uxp/components';
```

## Signature

```tsx
const ErrorState: React.FunctionComponent<ErrorStateProps>
```

## Examples

#### Full-page card

```tsx
tsx
<ErrorState
  variant="warning"
  code="404"
  title="Page not found"
  description="The page you are looking for doesn't exist."
  action={<Button title="Go back" onClick={goBack} />}
/>
```

#### Inline notice inside a gated tab

```tsx
tsx
<ErrorState
  mode="inline"
  icon={['fas', 'lock']}
  title="Access Denied"
  description="You are not authorized to view this section"
  descriptionDisplay="inline"
/>
```

#### Icon-only indicator with the detail in a dropdown

```tsx
tsx
<ErrorState
  mode="indicator"
  title="Sync failed"
  description="The last sync attempt failed 3 minutes ago."
  action={<Button title="Retry" onClick={retry} />}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|description|React.ReactNode|No|-|-|
|icon|[ButtonIcon](../types/ButtonIcon.md)|No|-|-|
|code|string|No|-|-|
|variant|[ErrorStateVariant](../types/ErrorStateVariant.md)|No|-|-|
|mode|[ErrorStateMode](../types/ErrorStateMode.md)|No|-|-|
|descriptionDisplay|[ErrorStateDescriptionDisplay](../types/ErrorStateDescriptionDisplay.md)|No|-|-|
|action|React.ReactNode|No|-|-|
|className|string|No|-|-|
|styles|React.CSSProperties|No|-|-|

## Related Types

- [ErrorStateProps](../types/ErrorStateProps.md)
- [ButtonIcon](../types/ButtonIcon.md)
- [PHIconProp](../types/PHIconProp.md)
- [PHIconPrefix](../types/PHIconPrefix.md)
- [ErrorStateVariant](../types/ErrorStateVariant.md)
- [ErrorStateMode](../types/ErrorStateMode.md)
- [ErrorStateDescriptionDisplay](../types/ErrorStateDescriptionDisplay.md)

