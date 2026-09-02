# Core UXP Components Reference

Reference guide for core components, hooks, and types used in UXP v5 applications.

---

## Overview

UXP provides a rich set of components for building data-driven applications. This page provides a quick reference organized by category. Click on any component or hook name to view detailed documentation including props, examples, and TypeScript signatures.

For complete type definitions, see the [Types Documentation](../types.md).

---

## Data Display & Search

| Component | Description |
|-----------|-------------|
| [ObjectSearchComponent](../components/ObjectSearchComponent.md) | Advanced data table with search, filters, views, sorting, pagination, and bulk actions. Primary component for listing data. |
| [ObjectDetailsPanel](../components/ObjectDetailsPanel.md) | Side panel for viewing object details. ObjectSearchComponent uses this internally when clicking on items. |
| [ObjectInfoCard](../components/ObjectInfoCard.md) | Display object information in a card format with title, subtitle, and optional image/icon. |
| [InfoCard](../components/InfoCard.md) | Display object information in a card format with customizable field mapping. |
| [UserInfoCard](../components/UserInfoCard.md) | Display user information with avatar, name, and role. Auto-fetches user data. |
| [InfoCardGroup](../components/InfoCardGroup.md) | Group multiple InfoCards together with consistent layout. |
| [Chip](../components/Chip.md) | Status badge/tag for displaying categories or labels with icons and colors. |
| [DataList](../components/DataList.md) | Simple list component for displaying data items. |
| [DataTable](../components/DataTable.md) | Basic table component for tabular data display. |
| [DataGrid](../components/DataGrid.md) | Grid layout for displaying data in card format. |
| [ItemCard](../components/ItemCard.md) | Card component for displaying individual items with actions. |

---

## Forms & Input

| Component | Description |
|-----------|-------------|
| [SlideInForm](../components/SlideInForm.md) | Slide-in panel form with action buttons and validation. Creates the skeleton structure for forms. |
| [DynamicForm](../components/DynamicForm.md) | JSON-driven form builder with automatic validation, conditional fields, and dynamic field types. |
| [DataEntryForm](../components/DataEntryForm.md) | JSX wrapper for DynamicForm providing XML-like developer experience. Converts JSX to JSON internally. |
| [Input](../components/Input.md) | Text input with validation and formatting support. |
| [Select](../components/Select.md) | Dropdown select with search, pagination, and async data loading. |
| [MultiSelect](../components/MultiSelect.md) | Multi-selection dropdown with search and pagination. |
| [Checkbox](../components/Checkbox.md) | Checkbox input with label and validation. |
| [DatePicker](../components/DatePicker.md) | Date picker with calendar interface. |
| [TimePicker](../components/TimePicker.md) | Time picker component. |
| [DateTimePicker](../components/DateTimePicker.md) | Combined date and time picker. |
| [DateRangePicker](../components/DateRangePicker.md) | Date range selection component. |
| [TimeRangePicker](../components/TimeRangePicker.md) | Time range selection component. |
| [ColorPicker](../components/ColorPicker.md) | Color selection component with palette support. |
| [FileInput](../components/FileInput.md) | File upload component with drag-and-drop support. |
| [MediaPicker](./media-picker.md) | Media field for images, icons, documents, video and audio — media library, image gallery, font icons, upload and URL. |
| [ImagePicker](./media-picker.md) | Image URL input with a browse button onto the image gallery. A MediaPicker wrapper. |
| [IconPicker](../components/IconPicker.md) | Icon selection component supporting FontAwesome and Phosphor icons. |
| [PillInput](../components/PillInput.md) | Tag/pill input for multiple value entry with formatters. |
| [InfoCardGroupInput](../components/InfoCardGroupInput.md) | Select/input using InfoCard format for better UX with complex object selection. |
| [TreeViewSelectInput](../components/TreeViewSelectInput.md) | Tree-based hierarchical selection component. |
| [SearchBox](../components/SearchBox.md) | Search input with debounce and clear functionality. |
| [TextArea](../components/TextArea.md) | Multi-line text input component. |

---

## Actions & Navigation

| Component | Description |
|-----------|-------------|
| [ActionsListComponent](../components/ActionsListComponent.md) | Action buttons list with icons, labels, and click handlers. Used in dropdown menus. |
| [ButtonGroup](../components/ButtonGroup.md) | Grouped action buttons with primary/secondary variants and dropdown support. |
| [ButtonComponent](../components/ButtonComponent.md) | Standard button with icon support, variants (primary, secondary, danger), and loading states. |
| [Button](../components/Button.md) | Basic button component with click handlers. |
| [AsyncButton](../components/AsyncButton.md) | Button that handles async operations with loading state. |
| [IconButton](../components/IconButton.md) | Icon-only button component. |
| [ConfirmButton](../components/ConfirmButton.md) | Button with built-in confirmation dialog. |
| [SafeLink](../components/SafeLink.md) | Navigation link component that works with UXP routing. |
| [Breadcrumb](../components/Breadcrumb.md) | Breadcrumb navigation component for hierarchical navigation. |

---

## Layout & Organization

| Component | Description |
|-----------|-------------|
| [TabComponent](../components/TabComponent.md) | Tabs navigation for organizing content into switchable sections. |
| [ConfigurationView](../components/ConfigurationView.md) | Settings/configuration page with searchable sections and navigation sidebar. |
| [SimpleConfigurationTable](../components/SimpleConfigurationTable.md) | Drag-and-drop sortable table for managing configuration items (types, categories, etc). |
| [Dashboard](../components/Dashboard.md) | Full-page responsive dashboard with widget management and configuration. |
| [EmbeddedDashboard](../components/EmbeddedDashboard.md) | Embedded responsive dashboard for object dashboards with widget layouts. |
| [Collapse](../components/Collapse.md) | Collapsible content container with expand/collapse animation. |
| [SlideInPanel](../components/SlideInPanel.md) | Slide-in side panel for additional content or forms. |

---

## Popups & Overlays

| Component | Description |
|-----------|-------------|
| [Modal](../components/Modal.md) | Modal dialog component with backdrop and close handlers. |
| [ModalWizard](../components/ModalWizard.md) | Multi-step wizard modal for guided workflows. |
| [Popover](../components/Popover.md) | Popover component for contextual content display. |
| [Tooltip](../components/Tooltip.md) | Tooltip component for hover information. |
| [Dropdown](../components/Dropdown.md) | Dropdown menu component with positioning support. |
| [DropDownButton](../components/DropDownButton.md) | Button with dropdown menu. |
| [FilterPanel](../components/FilterPanel.md) | Slide-out panel for filters and search options. |

---

## Charts & Visualizations

| Component | Description |
|-----------|-------------|
| [PieChartComponent](../components/PieChartComponent.md) | Pie chart visualization component. |
| [TrendChartComponent](../components/TrendChartComponent.md) | Line/area chart for trend visualization. |
| [RadialGauge](../components/RadialGauge.md) | Radial gauge chart for displaying metrics. |
| [MapComponent](../components/MapComponent.md) | Map component with Leaflet integration and heatmap support. |

---

## Utilities

| Component | Description |
|-----------|-------------|
| [ComponentRenderer](../components/ComponentRenderer.md) | Dynamically render components from other modules by moduleId and componentId. Essential for pluggable architecture. |
| [QRCodeComponent](../components/QRCodeComponent.md) | QR code generator with download and print support. |
| [Icon](../components/Icon.md) | Icon component supporting FontAwesome, Phosphor, and image URLs. |
| [ProfileImage](../components/ProfileImage.md) | User profile image/avatar component with fallback. |
| [SkeletonLoader](../components/SkeletonLoader.md) | Skeleton loading placeholder for content. |
| [Loading](../components/Loading.md) | Loading indicator component. |
| [LoadingFeedback](../components/LoadingFeedback.md) | Loading feedback with message display. |
| [TreeView](../components/TreeView.md) | Hierarchical tree view component with expand/collapse. |

---

## Hooks Reference

### API & Data Fetching

| Hook | Description |
|------|-------------|
| [useExecuteRequest](../hooks/useExecuteRequest.md) | Execute API request with automatic loading state. Auto-executes on mount and dependency changes. |
| [useExecuteRequestCallback](../hooks/useExecuteRequestCallback.md) | Create stable callback for manual API requests. Supports preview mode with sample data. |
| [useUXPContext](../hooks/useUXPContext.md) | Access UXP context with API methods, theme, user info, and configuration. |

### Routing & Navigation

| Hook | Description |
|------|-------------|
| [useRouterContext](../hooks/useRouterContext.md) | Access router context and navigation utilities with URL generation. |
| [useSearchParams](../hooks/useSearchParams.md) | Access and work with URL search parameters as typed object. |

### UI & Interactions

| Hook | Description |
|------|-------------|
| [useToast](../hooks/useToast.md) | Access toast notifications (success, error, info). |
| [useAlert](../hooks/useAlert.md) | Access alert/confirmation dialogs with form support. |
| [useDeleteAction](../hooks/useDeleteAction.md) | Pre-built delete/restore operations with dependency checking and confirmation. |
| [usePluggableView](../hooks/usePluggableView.md) | Make views customizable/replaceable by other apps. |
| [useFormatters](../hooks/useFormatters.md) | Access data formatters (date, number, currency, etc). |

### Real-time & Events

| Hook | Description |
|------|-------------|
| [useMessageBus](../hooks/useMessageBus.md) | Subscribe to SignalR real-time messages. |
| [useEventSubscriber](../hooks/useEventSubscriber.md) | Subscribe to application events. |
| [useMultiEventSubscriber](../hooks/useMultiEventSubscriber.md) | Subscribe to multiple events with shared callback. |

### Utilities

| Hook | Description |
|------|-------------|
| [useDebounce](../hooks/useDebounce.md) | Debounce values to reduce unnecessary updates. |
| [useFields](../hooks/useFields.md) | Form field state management. |
| [useResizeEffect](../hooks/useResizeEffect.md) | Respond to component resize events. |
| [useEffectWithPolling](../hooks/useEffectWithPolling.md) | Effect with automatic polling at intervals. |
| [useHasChanged](../hooks/useHasChanged.md) | Detect if value has changed since last render. |
| [useCounter](../hooks/useCounter.md) | Simple counter state management with increment/reset. |
| [useAddOns](../hooks/useAddOns.md) | Access and manage add-ons system. |
| [useWidgets](../hooks/useWidgets.md) | Access registered widgets. |

---

## Next Steps

- **[Data Fetching](./data-fetching.md)** - Learn how to fetch and manage data in your views
- **[Components Documentation](../components.md)** - Browse all 120+ components with detailed props and examples
- **[Hooks Documentation](../hooks.md)** - Complete reference for all UXP hooks
- **[Types Documentation](../types.md)** - TypeScript type definitions and interfaces

---

## Notes

- All component names link to auto-generated documentation with complete prop specifications, TypeScript signatures, and usage examples
- The auto-generated docs are updated with each build via `npm run build:docs`
- For architectural context and integration patterns, refer to [Architecture](./architecture.md)