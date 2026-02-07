# Core UXP Components in V5

This guide covers the main UXP components used in v5 apps, based on patterns from the Location app.

---

## Overview

UXP provides a comprehensive set of components for building consistent, feature-rich views. The most commonly used components are:

- **ObjectSearchComponent** - For listing and searching data
- **ObjectDetailsPanel** - For displaying detailed information
- **SimpleConfigurationTable** - For editable configuration tables
- **SlideInForm** - For slide-in forms with dynamic fields
- **useUXPContext** - Hook for accessing UXP context

---

## 1. ObjectSearchComponent

A powerful component for displaying searchable, filterable lists with built-in pagination, views, and details panels.

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

### Key Props

**Required:**
- `data` - Async function: `(page, pageSize, query?, filters?, sort?) => Promise<{ items: any[] }>`
- `idField` - Unique identifier field name
- `columns` - Column definitions
- `pageSize` - Number of items per page

**Optional:**
- `filters` - Filter configuration
- `views` - Pre-configured views
- `actionButtons` - Top-right action buttons
- `bulkActionButtons` - Bulk action buttons (shown when rows selected)
- `defaultActionColumns` - Row action configuration
- `detailsPanel` - Details panel configuration
- `search` - Search configuration
- `summaryContent` - Summary cards above the table
- `appendToURL` - Sync state with URL (default: false)

---

### Columns

Define how data is displayed in the table:

```typescript
const columns: OSCColumn[] = [
    {
        id: 'LocationName',
        label: 'Name',
        isSortable: true,
        isResizable: true,
        // Optional: custom rendering
        renderColumn: (item) => (
            <div className="location-name">
                {item.LocationName}
            </div>
        )
    },
    {
        id: 'LocationCode',
        label: 'Site ID#',
        isResizable: true,
    },
    {
        id: 'Hidden',
        label: 'Status',
        renderColumn: (item) => {
            const isActive = item.Hidden == '0';
            return (
                <Chip
                    icon="fas circle"
                    label={isActive ? 'Active' : 'Inactive'}
                    backgroundColor={isActive ? '#4caf50' : '#f44336'}
                />
            );
        },
        formatter: (value) => value == '0' ? 'Active' : 'Inactive',
    }
];
```

**Column Properties:**
- `id` - Data field name
- `label` - Column header
- `isSortable` - Enable sorting
- `isResizable` - Enable column resizing
- `renderColumn` - Custom cell renderer (optional)
- `formatter` - Value formatter for exports (optional)

> **Note:** Minimize custom `renderColumn` when possible. Use standard rendering for consistency and performance.

---

### Views (Pre-configured Filters)

Views allow users to quickly switch between different filtered data sets:

```typescript
const viewsConfig: ViewsConfig = {
    listId: 'location-portfolios',
    defaultViews: [
        {
            id: 'active-locations',
            name: 'Active Locations',
            group: 'Locations',
            configurations: {
                filters: { Hidden: '0' },
                sort: { LocationName: 1 }
            }
        },
        {
            id: 'inactive-locations',
            name: 'Inactive Locations',
            group: 'Locations',
            configurations: {
                filters: { Hidden: '1' },
                sort: { LocationName: 1 }
            }
        }
    ],
    allowToMangeCustomViews: true,
    defaultviewId: 'active-locations'
};
```

**ViewsConfig Properties:**
- `listId` - Unique identifier for storing custom views
- `defaultViews` - Array of pre-configured views
- `allowToMangeCustomViews` - Allow users to create/edit/delete views
- `defaultviewId` - Initial view to load

**View Properties:**
- `id` - Unique view identifier
- `name` - Display name
- `group` - Group name (for organizing views)
- `configurations.filters` - Filter values
- `configurations.sort` - Sort configuration

---

### Filters

Allow users to filter data dynamically:

```typescript
const filterConfig: FilterConfig = {
    formFields: [
        {
            title: '',
            columns: 1,
            fields: [
                {
                    name: 'LocationTypeKey',
                    label: 'Location Type',
                    type: 'select',
                    options: locationTypes.map(lt => ({
                        label: lt.LocationType,
                        value: lt.LocationTypeKey
                    }))
                },
                {
                    name: 'Hidden',
                    label: 'Status',
                    type: 'select',
                    options: [
                        { label: 'All', value: '' },
                        { label: 'Active', value: '0' },
                        { label: 'Inactive', value: '1' }
                    ]
                }
            ]
        }
    ]
};
```

Filter field types: `text`, `select`, `date`, `daterange`, `checkbox`, `multiselect`

---

### Details Panel

Show detailed information when a row is clicked:

```typescript
const detailsPanel: CustomDetailsPanelProps = {
    // Column shown when panel is collapsed
    columns: [
        {
            id: 'Details',
            label: 'Details',
            renderColumn: (item) => (
                <div className="collapsed-view">
                    <div className="name">{item.LocationName}</div>
                    <div className="code">{item.LocationCode}</div>
                </div>
            )
        }
    ],

    // Full details panel when expanded
    renderDetails: (itemId, onClose) => (
        <LocationDetailsComponent
            locationKey={itemId}
            onClose={onClose}
            view="embeded"
        />
    )
};
```

---

### Action Buttons

Add action buttons to the toolbar:

```typescript
const actionButtons = (
    <>
        <ButtonGroup
            buttons={[
                {
                    id: 'export',
                    title: 'Export',
                    leftIcon: 'fal cloud-download-alt',
                    onClick: () => objectSearchRef.current?.export()
                }
            ]}
            variant='secondary'
        />

        <ButtonGroup
            buttons={[
                {
                    id: 'add',
                    title: 'New',
                    leftIcon: 'fal plus',
                    onClick: () => navigate('/add')
                }
            ]}
            variant='primary'
        />
    </>
);
```

---

### Row Actions

Add actions to each row (edit, delete, etc.):

```typescript
const defaultActionColumns: DefaultActionColumnsConfig = {
    actionsColumn: {
        enable: true,
        headerActions: {
            sort: true,
            multiColumnSort: false,
            customiseColumns: true
        },
        rowActions: (item) => [
            {
                icon: 'fal pencil',
                label: 'Edit',
                onClick: () => navigate(`/edit/${item.LocationKey}`)
            },
            {
                icon: 'fal trash',
                label: 'Delete',
                onClick: async () => {
                    await deleteAction({
                        model: 'Location.Location',
                        key: item.LocationKey,
                        onSuccess: () => objectSearchRef.current?.refreshCurrentPage()
                    });
                }
            }
        ]
    }
};
```

---

## 2. ObjectDetailsPanel

Display comprehensive details about a single object with tabs, toolbars, and sections.

### Basic Usage

```typescript
import { ObjectDetailsPanel, Chip } from "uxp/components";

const LocationDetailsComponent = ({ locationKey, onClose }) => {
    const uxpContext = useUXPContext();

    const getDetails = async () => {
        const { data } = await executeConfig(
            uxpContext,
            LocationServices.getDetails(locationKey)
        );
        return data;
    };

    return (
        <ObjectDetailsPanel
            data={getDetails}
            title={{
                title: (item) => item.LocationName,
                status: (item) => (
                    <Chip
                        icon="fas circle"
                        label={item.Hidden == '0' ? 'Active' : 'Inactive'}
                    />
                ),
                analytics: [
                    { icon: 'fal building', value: '24', label: 'Floors' },
                    { icon: 'fal users', value: '156', label: 'Users' }
                ]
            }}
            toolbarItems={(item) => ({
                left: [
                    {
                        icon: 'fal pencil',
                        label: 'Edit',
                        onClick: () => navigate(`/edit/${item.LocationKey}`)
                    }
                ],
                right: [
                    {
                        icon: 'fal trash',
                        label: 'Delete',
                        onClick: () => handleDelete(item)
                    }
                ]
            })}
            generalDetails={(item) => ({
                columns: 2,
                fields: [
                    { label: 'Location', value: item.LocationName },
                    { label: 'Type', value: item.LocationType },
                    { label: 'Address', value: item.Address }
                ]
            })}
            otherDetails={(item) => (
                <TabComponent
                    tabs={[
                        {
                            id: 'children',
                            label: 'Child Locations',
                            content: <ChildLocations location={item} />
                        },
                        {
                            id: 'layouts',
                            label: 'Layouts',
                            content: <Layouts location={item} />
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

### Key Props

**Required:**
- `data` - Async function returning the object details

**Optional:**
- `title` - Title configuration (title, status, analytics, backgroundImage)
- `toolbarItems` - Left and right toolbar buttons
- `generalDetails` - Key-value fields in the header
- `otherDetails` - Main content area (usually tabs)
- `additionlDetails` - Additional expandable sections
- `showCloseButton` - Show close button (for embedded mode)
- `onClose` - Close handler

---

### Title Configuration

```typescript
title={{
    title: (item, loading) => item?.LocationName,
    status: (item, loading) => <Chip label="Active" />,
    analytics: [
        {
            icon: 'fal building',
            value: item.floorCount,
            label: 'Floors'
        }
    ],
    backgroundImage: '/images/header-bg.png'
}}
```

---

### General Details

Display key information in a grid:

```typescript
generalDetails={(item, loading) => ({
    columns: 2, // Number of columns
    fields: [
        {
            label: 'Location',
            value: item.LocationName
        },
        {
            label: 'QR Code',
            value: 'N/A',
            renderValue: () => (
                <QRCodeComponent
                    value={`/view/location/details/${item.LocationKey}`}
                />
            )
        }
    ]
})}
```

**Field Properties:**
- `label` - Field label
- `value` - Field value
- `renderValue` - Custom renderer (optional)

---

### Other Details (Tabs)

other details section, typically with tabs:

```typescript
otherDetails={(item, loading) => (
    <TabComponent
        tabs={[
            {
                id: 'childlocations',
                label: 'Child Locations',
                content: <ChildLocations location={item} />
            },
            {
                id: 'layouts',
                label: 'Layouts',
                content: <Layouts location={item} />
            }
        ]}
        selected={selectedTab}
        onChangeTab={(tab) => setSelectedTab(tab)}
    />
)}
```

> **Tip:** Sync selected tab with URL using `useSearchParams()` and `useRouterContext()`.

---

### Additional Details

Expandable sections in the sidebar:

```typescript
additionlDetails={[
    {
        id: 'site-properties',
        icon: 'fal lightbulb-on',
        label: 'Site Properties',
        content: (item, loading) => <SiteProperties location={item} />
    },
    {
        id: 'activity-log',
        icon: 'fal clock-rotate-left',
        label: 'Activities',
        content: (item, loading) => (
            <ComponentRenderer
                moduleId="iviva-system-app"
                componentId="activity-log"
                type="ui"
                additionalProps={{
                    objectType: 'Location',
                    objectKey: item.LocationKey
                }}
            />
        )
    }
]}
```

---

## 3. useUXPContext Hook

Access UXP context for API calls, localization, theming, and more.

### Basic Usage

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


> **Recommended:** Use service configurations with `executeConfig()` instead of direct context methods. See [data-fetching.md](./data-fetching.md).

---

## 4. SimpleConfigurationTable

An editable table for configuration data with inline editing, add/delete, and drag-to-reorder.

### Basic Usage

```typescript
import { SimpleConfigurationTable } from "uxp/components";

const ChildLocations = ({ location }) => {
    return (
        <SimpleConfigurationTable
            columns={[
                {
                    id: 'LocationName',
                    label: 'Name'
                },
                {
                    id: 'LocationType',
                    label: 'Type'
                }
            ]}
            data={location.childLocations || []}
            pageSize={20}
            onClickRow={(e, item) => {
                navigate(`/details/${item.LocationKey}`);
            }}
            search={{
                fields: ['LocationName']
            }}
            noDataText="No child locations found"
            showAddButton={false}
        />
    );
};
```

### Editable Configuration Table

```typescript
const LocationTypeConfiguration = () => {
    const uxpContext = useUXPContext();

    const updateType = async (item) => {
        const { error } = await executeConfig(
            uxpContext,
            LocationTypeServices.update(item)
        );
        if (error) return { success: false, error };
        return { success: true };
    };

    const createType = async (item) => {
        const { error } = await executeConfig(
            uxpContext,
            LocationTypeServices.create(item.LocationType)
        );
        if (error) return { success: false, error };
        return { success: true };
    };

    const deleteType = async (item) => {
        const { error } = await executeConfig(
            uxpContext,
            LocationTypeServices.delete(item)
        );
        if (error) return { success: false, error };
        return { success: true };
    };

    const updateOrder = async (items) => {
        const keys = items.map(k => k.LocationTypeKey).join(',');
        const { error } = await executeConfig(
            uxpContext,
            LocationTypeServices.updateSortOrder(keys)
        );
        if (error) return { success: false, error };
        return { success: true };
    };

    return (
        <SimpleConfigurationTable
            labels={{
                add: 'Add Location Type',
                deleted: 'Location type has been deleted',
                saved: 'Location type has been saved'
            }}
            columns={[
                {
                    id: 'LocationType',
                    label: 'Location Type',
                    editable: true,
                    type: 'text',
                    validate: {
                        required: true
                    }
                }
            ]}
            data={locationTypes}
            onUpdate={updateType}
            onCreate={createType}
            onDelete={deleteType}
            onUpdateOrder={updateOrder}
            enableReordering={true}
            showAddButton={true}
            pageSize={50}
        />
    );
};
```

### Key Props

- `columns` - Column definitions (same as ObjectSearchComponent)
- `data` - Array of data items
- `onUpdate` - Update handler (for editable tables)
- `onCreate` - Create handler (for editable tables)
- `onDelete` - Delete handler (for editable tables)
- `onUpdateOrder` - Reorder handler
- `onClickRow` - Row click handler
- `enableReordering` - Enable drag-to-reorder
- `showAddButton` - Show add button
- `search` - Search configuration
- `labels` - Custom labels
- `actions` - Custom action buttons
- `pageSize` - Items per page
- `noDataText` - Empty state message

---

## 5. Forms (SlideInForm + DynamicForm)

Create slide-in forms with dynamic field configurations.

### Basic Usage

```typescript
import { SlideInForm, DynamicFormFieldProps, FormSectionProps } from "uxp/components";

const LocationFormComponent = ({ isOpen, onClose, editInstance, afterSave }) => {
    const uxpContext = useUXPContext();
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
                    validate: {
                        required: true
                    }
                },
                {
                    name: 'LocationTypeKey',
                    label: 'Location Type',
                    type: 'select',
                    value: '',
                    options: locationTypes,
                    labelField: 'LocationType',
                    valueField: 'LocationTypeKey',
                    validate: {
                        required: true
                    }
                },
                {
                    name: 'ParentLocationKey',
                    label: 'Parent Location',
                    type: 'select',
                    value: '',
                    getPaginatedOptions: async (formData, max, lastToken, args) => {
                        const { data } = await executeConfig(
                            uxpContext,
                            LocationServices.getParentLocations(formData.LocationTypeKey)
                        );
                        return {
                            items: data || [],
                            pageToken: String(data?.length || 0),
                            total: data?.length || 0
                        };
                    },
                    labelField: 'LocationName',
                    valueField: 'LocationKey',
                    show: (data) => data.LocationTypeKey !== primaryLocationTypeKey
                }
            ]
        },
        {
            title: 'Additional Details',
            columns: 3,
            fields: [
                {
                    name: 'Address',
                    label: 'Address',
                    type: 'textarea',
                    value: ''
                },
                {
                    name: 'TimeZone',
                    label: 'Time Zone',
                    type: 'select',
                    value: '',
                    options: timeZones,
                    labelField: 'Text',
                    valueField: 'Code'
                }
            ]
        }
    ];

    const handleSave = async (formData) => {
        const { data, error } = editInstance
            ? await updateLocation(uxpContext, editInstance, formData)
            : await createLocation(uxpContext, formData);

        if (error) {
            return { success: false, error };
        }

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

**Text Inputs:**
- `text` - Single line text
- `textarea` - Multi-line text
- `number` - Numeric input
- `email` - Email input
- `password` - Password input

**Selects:**
- `select` - Single select dropdown
- `multiselect` - Multiple selection

**Date/Time:**
- `date` - Date picker
- `datetime` - Date and time picker
- `time` - Time picker
- `daterange` - Date range picker

**Other:**
- `checkbox` - Checkbox
- `radio` - Radio buttons
- `file` - File upload
- `color` - Color picker
- `readonly` - Read-only field
- `hidden` - Hidden field

### Field Properties

```typescript
{
    name: 'LocationName',           // Field name
    label: 'Location Name',         // Field label
    type: 'text',                   // Field type
    value: '',                      // Initial value
    placeholder: 'Enter name',      // Placeholder text

    // Validation
    validate: {
        required: true,
        minLength: 3,
        maxLength: 100,
        pattern: /^[a-zA-Z0-9\s]+$/,
        customValidateFunction: async (value, formData) => {
            // Custom validation logic
            return {
                valid: true,
                error: null
            };
        }
    },

    // Conditional visibility
    show: (formData) => formData.LocationTypeKey !== '123',

    // For select fields
    options: [{ label: 'Option 1', value: '1' }],
    labelField: 'LocationType',
    valueField: 'LocationTypeKey',

    // For async select with search
    getPaginatedOptions: async (formData, max, lastToken, args) => {
        return {
            items: [...],
            pageToken: '...',
            total: 100
        };
    },

    // Custom rendering
    renderField: (field, value, onChange, formData) => {
        return <CustomComponent />;
    }
}
```

### Form Sections

Organize fields into sections:

```typescript
const formStructure: FormSectionProps[] = [
    {
        title: 'Basic Information',
        columns: 2,              // Number of columns (1-4)
        fields: [/* fields */]
    },
    {
        title: 'Additional Details',
        columns: 3,
        fields: [/* fields */]
    }
];
```

---

## 6. Custom Rendering

While UXP components support custom rendering, **minimize custom implementations** for:

- **Consistency** - Standard components ensure a unified look and feel
- **Performance** - Built-in renderers are optimized
- **Maintainability** - Less custom code = easier updates
- **Accessibility** - Standard components are accessible by default

### When to Use Custom Rendering

✅ **Good use cases:**
- Complex cell content (images, chips, multiple lines)
- Custom validation logic
- Special field types not provided by UXP

❌ **Avoid custom rendering for:**
- Simple text formatting (use `formatter` instead)
- Basic styling (use CSS classes)
- Standard form fields (use built-in types)

### Example: Good Custom Rendering

```typescript
// ✅ Good - Complex content with image and status
renderColumn: (item) => (
    <div className="location-cell">
        <img src={item.image} />
        <div>
            <div className="name">{item.LocationName}</div>
            <Chip label={item.status} />
        </div>
    </div>
)

// ❌ Avoid - Simple text can use formatter
renderColumn: (item) => (
    <span>{item.LocationName.toUpperCase()}</span>
)
// Better:
formatter: (value) => value.toUpperCase()
```

---

## Summary

These core components cover most use cases in v5 apps:

- **ObjectSearchComponent** - Feature-rich data tables with search, filters, views
- **ObjectDetailsPanel** - Comprehensive details pages with tabs and toolbars
- **SimpleConfigurationTable** - Editable configuration tables
- **SlideInForm** - Dynamic slide-in forms
- **useUXPContext** - Access to UXP context

**Best Practices:**
1. Use service configurations for data fetching ([see data-fetching.md](./data-fetching.md))
2. Minimize custom rendering
3. Follow existing patterns from the Location app
4. Keep components focused and reusable

---

## Next Steps

- **[Data Fetching](./data-fetching.md)** - Learn the data fetching patterns
- **[Migrating to V5](./migrating-to-v5.md)** - Migration guide from XML views
- **Location App** - Study the Location 5.0 app for complete examples
