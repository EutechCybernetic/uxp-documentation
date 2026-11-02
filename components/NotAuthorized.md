# NotAuthorized


The standard "access denied" page (a lock icon, a message and Go back). Use it when the user
may not see a page or section; `mode="inline"` fits it inside a section or tab.



## Installation

```tsx
import { NotAuthorized } from 'uxp/components';
```

## Signature

```tsx
const NotAuthorized: React.FunctionComponent<ErrorPageProps>
```

## Examples

```tsx
tsx
if (!canView) return <NotAuthorized />;
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|No|-|-|
|description|string|No|-|-|
|action|React.ReactNode|No|-|-|
|mode|[ErrorStateMode](../types/ErrorStateMode.md)|No|-|-|

## Related Types

- [ErrorPageProps](../types/ErrorPageProps.md)
- [ErrorStateMode](../types/ErrorStateMode.md)

