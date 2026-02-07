# ConfiguredPage

## Definition

```tsx
export interface ConfiguredPage {
    key: string;
    id: string;
    tags: Record<string, string>;
    moduleId: string;
    componentId: string;
    type: ComponentType;
    appRoles: string[];
    userGroups: string[];
    props: any;
}
```

## Usage

```tsx
import { ConfiguredPage } from 'uxp/components';
```

## Related Types

- [ComponentType](../types/ComponentType.md)

