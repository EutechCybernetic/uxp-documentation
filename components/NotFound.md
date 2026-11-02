# NotFound


The standard "not found" page (a message and Go back). Use it when the record or page the
URL points to doesn't exist; `mode="inline"` fits it inside a section or tab.



## Installation

```tsx
import { NotFound } from 'uxp/components';
```

## Signature

```tsx
const NotFound: React.FunctionComponent<ErrorPageProps>
```

## Examples

```tsx
tsx
if (!item) return <NotFound description="This location was deleted." />;
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

