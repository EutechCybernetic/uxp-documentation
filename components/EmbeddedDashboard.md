# EmbeddedDashboard

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=dashboard-embedded-dashboard-embeddeddashboard--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="EmbeddedDashboard live demo"
></iframe>



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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|ids|[DashboardIdEntry[]](../types/DashboardIdEntry.md)|Yes|-|-|
|defaultConfiguration|[ResponsiveWidgetLayoutConfiguration](../types/ResponsiveWidgetLayoutConfiguration.md)|No|-|-|
|allowToConfigure|boolean|No|-|-|
|enableUserGroupLayouts|boolean|No|-|-|
|enableResponsiveLayouts|boolean|No|-|-|
|overlayMode|boolean|No|-|-|
|objectType|string|No|-|-|
|enableBackgroundConfig|boolean|No|-|-|
|autoPassedProps|Record<string, any>|No|-|-|
|globalDashboardSettings|UXPGlobalDashboardSettings \| null|No|-|-|

