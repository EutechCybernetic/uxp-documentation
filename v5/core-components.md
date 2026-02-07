# Core UXP Components

Main UXP components for building v5 apps, based on ui designs from the Location app.

---

## Overview

Most common components:

- **ObjectSearchComponent** - Searchable data tables with filters and views
- **ObjectDetailsPanel** - Details pages with tabs and toolbars
- **SimpleConfigurationTable** - Editable configuration tables
- **SlideInForm** - Slide-in forms with dynamic fields
- **useUXPContext** - Access UXP context (API calls, localization, theme)

---

## ObjectSearchComponent

Feature-rich data tables with search, filters, and views.

**Source:** [`src/components/widget/list/Tables/object-search/ObjectSearchComponent.tsx`](../../../src/components/widget/list/Tables/object-search/ObjectSearchComponent.tsx)

### Basic Usage

```typescript
import { ObjectSearchComponent, useExecuteRequestCallback } from "uxp/components";
import { LocationServices } from "../services";

const PortfolioView = () => {
    const objectSearchRef = useRef<ObjectSearchComponentHandlers>(null);
    const executeGetAll = useExecuteRequestCallback(LocationServices.getAll());

    const getAll = async (page, pageSize, query, filters, sort) => {
        const params = { page, pageSize, q: query, ...filters };
        const { data } = await executeGetAll(params);
        return { items: data || [] };
    };

    return (
        <ObjectSearchComponent
            ref={objectSearchRef}
            data={getAll}
            idField="LocationKey"
            columns={columns}
            pageSize={50}
            filters={filterConfig}
            views={viewsConfig}
            actionButtons={actionButtons}
            detailsPanel={detailsPanelConfig}
        />
    );
};
```

### Columns

```typescript
const columns: OSCColumn[] = [
    {
        id: 'LocationName',
        label: 'Name',
        isSortable: true,
        isResizable: true
    },
    {
        id: 'Hidden',
        label: 'Status',
        renderColumn: (item) => (
            <Chip
                label={item.Hidden == '0' ? 'Active' : 'Inactive'}
                backgroundColor={item.Hidden == '0' ? '#4caf50' : '#f44336'}
            />
        )
    }
];
```

### Views (Pre-configured Filters)

```typescript
const viewsConfig: ViewsConfig = {
    listId: 'location-portfolios',
    defaultViews: [
        {
            id: 'active-locations',
            name: 'Active Locations',
            configurations: {
                filters: { Hidden: '0' },
                sort: { LocationName: 1 }
            }
        }
    ],
    allowToMangeCustomViews: true,
    defaultviewId: 'active-locations'
};
```

### Details Panel

```typescript
const detailsPanel: CustomDetailsPanelProps = {
    columns: [
        {
            id: 'Details',
            label: 'Details',
            renderColumn: (item) => (
                <div>{item.LocationName}</div>
            )
        }
    ],
    renderDetails: (itemId, onClose) => (
        <LocationDetailsComponent
            locationKey={itemId}
            onClose={onClose}
        />
    )
};
```

---

## ObjectDetailsPanel

Display comprehensive details with tabs and toolbars.

**Source:** [`src/components/widget/list/Tables/object-search/ObjectDetailsPanel.tsx`](../../../src/components/widget/list/Tables/object-search/ObjectDetailsPanel.tsx)

### Basic Usage

```typescript
import { ObjectDetailsPanel, Chip, useUXPContext, useCallback } from "uxp/components";
import { getLocationDetails } from "../services";

const LocationDetailsComponent = ({ locationKey, onClose }) => {
    const uxpContext = useUXPContext();

    const getDetails = useCallback(async () => {
        const data = await getLocationDetails(uxpContext, locationKey);
        if (!data) return null;
        return data;
    }, [uxpContext, locationKey]);

    return (
        <ObjectDetailsPanel
            data={getDetails}
            title={{
                title: (item) => item.LocationName,
                status: (item) => (
                    <Chip label={item.Hidden == '0' ? 'Active' : 'Inactive'} />
                ),
                analytics: [
                    { icon: 'fal building', value: '24', label: 'Floors' }
                ]
            }}
            toolbarItems={(item) => ({
                left: [
                    {
                        icon: 'fal pencil',
                        label: 'Edit',
                        onClick: () => navigate(`/edit/${item.LocationKey}`)
                    }
                ]
            })}
            generalDetails={(item) => ({
                columns: 2,
                fields: [
                    { label: 'Location', value: item.LocationName },
                    { label: 'Type', value: item.LocationType }
                ]
            })}
            otherDetails={(item) => (
                <TabComponent
                    tabs={[
                        {
                            id: 'children',
                            label: 'Child Locations',
                            content: <ChildLocations location={item} />
                        }
                    ]}
                />
            )}
            showCloseButton={true}
            onClose={onClose}
        />
    );
};
```

---

## SimpleConfigurationTable

Editable tables for configuration data.

**Source:** [`src/components/widget/forms/SimpleConfigurationTable/SimpleConfigurationTable.tsx`](../../../src/components/widget/forms/SimpleConfigurationTable/SimpleConfigurationTable.tsx)

### Basic Usage

```typescript
import { SimpleConfigurationTable } from "uxp/components";

const LocationTypeConfiguration = () => {
    const updateType = async (item) => {
        const { error } = await executeConfig(
            uxpContext,
            LocationTypeServices.update(item)
        );
        return { success: !error, error };
    };

    return (
        <SimpleConfigurationTable
            columns={[
                {
                    id: 'LocationType',
                    label: 'Location Type',
                    editable: true,
                    type: 'text',
                    validate: { required: true }
                }
            ]}
            data={locationTypes}
            onUpdate={updateType}
            onCreate={createType}
            onDelete={deleteType}
            enableReordering={true}
            showAddButton={true}
        />
    );
};
```

---

## SlideInForm + DynamicForm

Create slide-in forms with dynamic field configurations.

**Source:** [`src/components/widget/forms/DataEntryForm/SlideInForm.tsx`](../../../src/components/widget/forms/DataEntryForm/SlideInForm.tsx)

### Basic Usage

```typescript
import { SlideInForm, DynamicFormFieldProps } from "uxp/components";

const LocationFormComponent = ({ isOpen, onClose, editInstance, afterSave }) => {
    const formRef = useRef<SlideInFormHandlers>(null);

    const formStructure: FormSectionProps[] = [
        {
            title: 'Basic Information',
            columns: 2,
            fields: [
                {
                    name: 'LocationName',
                    label: 'Location Name',
                    type: 'text',
                    value: '',
                    validate: { required: true }
                },
                {
                    name: 'LocationTypeKey',
                    label: 'Location Type',
                    type: 'select',
                    value: '',
                    options: locationTypes,
                    labelField: 'LocationType',
                    valueField: 'LocationTypeKey',
                    validate: { required: true }
                }
            ]
        }
    ];

    const handleSave = async (formData) => {
        const { data, error } = editInstance
            ? await updateLocation(uxpContext, editInstance, formData)
            : await createLocation(uxpContext, formData);

        if (error) return { success: false, error };

        afterSave?.(data.LocationKey);
        return { success: true };
    };

    return (
        <SlideInForm
            ref={formRef}
            isOpen={isOpen}
            onClose={onClose}
            title={editInstance ? 'Edit Location' : 'Add Location'}
            formStructure={formStructure}
            onSave={handleSave}
            renderMode="dynamic"
        />
    );
};
```

### Field Types

- **Text**: `text`, `textarea`, `number`, `email`, `password`
- **Select**: `select`, `multiselect`
- **Date/Time**: `date`, `datetime`, `time`, `daterange`
- **Other**: `checkbox`, `radio`, `file`, `color`, `readonly`, `hidden`

---

## useUXPContext Hook

Access UXP context for API calls, localization, theming.

**Source:** [`src/components/core/context/useUXPContext.ts`](../../../src/components/core/context/useUXPContext.ts)

```typescript
import { useUXPContext } from "uxp/components";

const MyComponent = () => {
    const uxpContext = useUXPContext();

    // Localization
    const title = uxpContext.$L('location.title');

    // Theme
    const primaryColor = uxpContext.theme.primaryColor;

    // User info
    const userName = uxpContext.user.name;

    // API calls (prefer service configs + executeConfig)
    const { data } = await executeConfig(
        uxpContext,
        LocationServices.getAll()
    );

    return <div>{title}</div>;
};
```

---

## Navigation

Navigate between pages programmatically.

**Source:** [`src/components/core/route-context/RouteContext.tsx`](../../../src/components/core/route-context/RouteContext.tsx)

### useRouterContext Hook

```typescript
import { useRouterContext } from "uxp/components";

const MyComponent = () => {
    const { navigate, generateURL } = useRouterContext();

    // Simple navigation
    navigate('/view/location');

    // Navigate with search params
    navigate(generateURL({ searchParams: { add: '1' } }));

    // Remove params
    navigate(generateURL({ removeParams: ['add', 'edit'] }));

    // Navigate to different path with params
    navigate(generateURL({
        path: '/view/location/details/LOC-123',
        searchParams: { tab: 'layouts' }
    }));
};
```

### Contextual Navigation (Embedded vs Standalone)

```typescript
// Used in tables/lists where item can be viewed in details panel (embedded) or new page (standalone)
navigate({
    embeddedUrl: generateURL({ searchParams: { key: item.LocationKey } }),
    standaloneUrl: generateURL({ path: `/view/location/details/${item.LocationKey}` }),
    isEmbedded: view === 'embedded',
    event: clickEvent,
    openInNewTab: false
});
```

**Behavior:**
- Regular click in embedded view → updates search params (opens details panel)
- Regular click in standalone view → navigates to new page
- Ctrl/Cmd + click → opens standalone URL in new tab

### SafeLink Component

```typescript
import { SafeLink } from "uxp/components";

<SafeLink to="/view/location/details/LOC-123">
    View Location
</SafeLink>
```

Supports Ctrl/Cmd + click to open in new tab.

---

## URL Parameters

Extract parameters from URLs.

**Sources:**
- Route params: Props from `configuration.yml` routes
- Search params: [`src/hooks/useRouteHandlers.ts`](../../../src/hooks/useRouteHandlers.ts)

### Route Parameters (from configuration.yml)

Defined in `configuration.yml` and passed as props:

```yaml
# configuration.yml
otherRoutes:
  "/details/:locationKey":
    pageId: ui/details-view
```

Component receives as prop:

```typescript
const DetailsView = ({ uxpContext, locationKey }) => {
    // locationKey = "LOC-123" from URL /view/location/details/LOC-123
    console.log(locationKey);
};
```

### Search/Query Parameters (useSearchParams)

Extract query params from URL:

```typescript
import { useSearchParams } from "uxp/components";

interface SearchParams {
    add?: string;
    edit?: string;
    key?: string;
}

const PortfolioView = () => {
    const { add, edit, key } = useSearchParams<SearchParams>();

    // URL: /view/location?add=1&edit=LOC-123
    // add = "1"
    // edit = "LOC-123"
};
```

---

## Other Useful Components

- **ButtonGroup** - Group of action buttons
- **Chip** - Status badges and tags
- **TabComponent** - Tabbed interface
- **QRCodeComponent** - QR code generator
- **ComponentRenderer** - Dynamic component loader
- **Modal** - Modal dialogs
- **Tooltip** - Tooltips
- **Loading** - Loading states

---

## Useful Hooks

- **useExecuteRequest** - Execute API requests with auto state management ([`src/components/core/context/useExecuteRequest.ts`](../../../src/components/core/context/useExecuteRequest.ts))
- **useExecuteRequestCallback** - Stable callback for API requests ([`src/components/core/context/useExecuteRequest.ts`](../../../src/components/core/context/useExecuteRequest.ts))
- **useRouterContext** - Access routing utilities ([`src/hooks/useRouteHandlers.ts`](../../../src/hooks/useRouteHandlers.ts))
- **useSearchParams** - Extract query parameters from URL ([`src/hooks/useRouteHandlers.ts`](../../../src/hooks/useRouteHandlers.ts))
- **useAlert** - Alert dialogs
- **useToast** - Toast notifications
- **useDeleteAction** - Delete/hide action handler
- **usePluggableView** - Create pluggable view points
- **useEventSubscriber** - Subscribe to events
- **useMessageBus** - Subscribe to SignalR messages

---

**See Location 5.0 app** (`/apps/iviva.dx/Location/5.0/Resources/views/src/`) for complete real-world examples of all components.

---

## Next Steps

- [Data Fetching](./data-fetching.md) - Learn the data fetching patterns
- [Events & Synchronization](./events-and-synchronization.md) - Keep views synchronized
- [Using External Components](./using-external-components.md) - Use components from other apps
- [Pluggable Views](./pluggable-views.md) - Make your app customizable
