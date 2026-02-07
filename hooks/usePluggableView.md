# usePluggableView


Hook to register a pluggable view and get a render function

Simplifies pluggable view usage by eliminating duplication:
- Registers the view declaration once
- Returns a render function for usage



## Installation

```tsx
import { usePluggableView } from 'uxp/components';
```

## Signature

```tsx
function usePluggableView(declaration: Omit<PluggableViewDeclaration, 'props'>): (props?: Record<string, any>) => React.ReactNode
```

## Examples

```tsx
typescript
const renderOtherDetails = usePluggableView({
    viewId: `${App}/details/other`,
    parentViewId: `${App}/details`,
    defaultPage: OtherDetails
});

// Use in render:
return (
    <div>
        {renderOtherDetails({
            location: item,
            loading,
            isPreview
        })}
    </div>
);
```

