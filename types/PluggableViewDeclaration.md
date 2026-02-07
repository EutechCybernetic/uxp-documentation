# PluggableViewDeclaration


Props for PluggableView component


## Definition

```tsx
export interface PluggableViewDeclaration {
    /**
     * Unique identifier for this replaceable view (case-insensitive)
     * Should follow hierarchical pattern: /App/Page/Section
     * @example "/Location/details/info-panel"
     */
    viewId: string;

    /**
     * Optional parent view ID for building hierarchy
     * If not specified, this view will be treated as a root-level view
     * @example "/Location/details"
     */
    parentViewId?: string;

    /**
     * Default component to render when no override is configured
     * Can be either:
     * - A pageId string: "<moduleid>/widget/<widget id>"
     * - A React component reference: LocationInfoPanelComponent
     */
    defaultPage: string | React.ComponentType;

    /**
     * Props to pass to the rendered component
     */
    props?: Record<string, any>;
}
```

## Usage

```tsx
import { PluggableViewDeclaration } from 'uxp/components';
```

## Related Types

- [ComponentType](../types/ComponentType.md)

