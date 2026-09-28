# EmbeddedDashboard


Embedded dashboard component for rendering dashboards within pages (without navigation)



## Installation

```tsx
import { EmbeddedDashboard } from 'uxp/components';
```

## Signature

```tsx
const EmbeddedDashboard: React.MemoExoticComponent<React.FunctionComponent<EmbeddedDashobardComponentProps>>
```

## Examples

#### // Basic usage - Simple embedded dashboard
<EmbeddedDashboard
  ids={["myapp/dashboard/main"]}
/>

#### // With default configuration from JSON file
import defaultConfig from './dashboards/equipment-default.json';

<EmbeddedDashboard
  ids={["equipment/dashboard/chiller-123", "equipment/dashboard/chiller", "equipment/dashboard"]}
  defaultConfiguration={defaultConfig}
  allowToConfigure={true}
/>

#### // Advanced usage - With user group layouts and responsive breakpoints
<EmbeddedDashboard
  ids={["equipment/dashboard/chiller-123", "equipment/dashboard/chiller", "equipment/dashboard"]}
  allowToConfigure={true}
  enableUserGroupLayouts={true}
  enableResponsiveLayouts={true}
/>

## Live preview

[Open EmbeddedDashboard in the playground →](<https://story.uxp.iviva.com/?path=/docs/dashboard-embeddeddashboard--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/dashboard-embeddeddashboard--docs&props=%7B%22ids%22%3A%5B%22myapp%2Fdashboard%2Fmain%22%5D%7D>)
- [Example 3](<https://story.uxp.iviva.com/?path=/docs/dashboard-embeddeddashboard--docs&args=allowToConfigure%3A%21true%3BenableUserGroupLayouts%3A%21true%3BenableResponsiveLayouts%3A%21true&props=%7B%22ids%22%3A%5B%22equipment%2Fdashboard%2Fchiller-123%22%2C%22equipment%2Fdashboard%2Fchiller%22%2C%22equipment%2Fdashboard%22%5D%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|ids|[DashboardIdEntry[]](../types/DashboardIdEntry.md)|Yes|-|['storybook-sample-dashboard']|
|defaultConfiguration|[ResponsiveWidgetLayoutConfiguration](../types/ResponsiveWidgetLayoutConfiguration.md)|No|-|-|
|allowToConfigure|boolean|No|-|-|
|enableUserGroupLayouts|boolean|No|-|-|
|enableResponsiveLayouts|boolean|No|-|-|
|overlayMode|boolean|No|-|-|
|objectType|string|No|-|-|
|enableBackgroundConfig|boolean|No|-|-|
|autoPassedProps|Record<string, any>|No|-|-|
|globalDashboardSettings|UXPGlobalDashboardSettings \| null|No|-|-|
|onFiltersChange|(filters: DashboardFilters) => void|No|-|-|

