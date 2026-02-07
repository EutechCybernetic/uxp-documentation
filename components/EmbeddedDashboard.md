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

```tsx
// Basic usage - Simple embedded dashboard
<EmbeddedDashboard
  ids={["myapp/dashboard/main"]}
/>
```

```tsx
// With default configuration from JSON file
import defaultConfig from './dashboards/equipment-default.json';

<EmbeddedDashboard
  ids={["equipment/dashboard/chiller-123", "equipment/dashboard/chiller", "equipment/dashboard"]}
  defaultConfiguration={defaultConfig}
  allowToConfigure={true}
/>
```

```tsx
// Advanced usage - With user group layouts and responsive breakpoints
<EmbeddedDashboard
  ids={["equipment/dashboard/chiller-123", "equipment/dashboard/chiller", "equipment/dashboard"]}
  allowToConfigure={true}
  enableUserGroupLayouts={true}
  enableResponsiveLayouts={true}
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|ids|string[]|Yes|-|-|
|defaultConfiguration|[ResponsiveWidgetLayoutConfiguration](../types/ResponsiveWidgetLayoutConfiguration.md)|No|-|-|
|allowToConfigure|boolean|No|-|-|
|enableUserGroupLayouts|boolean|No|-|-|
|enableResponsiveLayouts|boolean|No|-|-|

