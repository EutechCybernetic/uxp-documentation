# WidgetDrawerConfig




## Definition

```tsx
export interface WidgetDrawerConfig {
    title?: string
    mode?: WidgetDrawerMode
    showTypeFilter?: boolean
    showStatusFilter?: boolean
    showCategoryFilter?: boolean
    defaultType?: WidgetDrawerType
    defaultStatus?: WidgetDrawerStatus
    excludeStatuses?: WidgetDrawerStatus[]
    buttonLabel?: string
    widgetsButtonLabel?: string
    uisButtonLabel?: string
    returnRawData?: boolean
    enableUIs?: boolean
}
```

## Usage

```tsx
import { WidgetDrawerConfig } from 'uxp/components';
```

## Related Types

- [WidgetDrawerMode](../types/WidgetDrawerMode.md)
- [WidgetDrawerType](../types/WidgetDrawerType.md)
- [WidgetDrawerStatus](../types/WidgetDrawerStatus.md)

