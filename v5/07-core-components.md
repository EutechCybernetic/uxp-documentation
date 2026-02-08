# Step 7: Core UXP Components

Build powerful data-driven views using UXP's core components. This guide walks you through building a complete view from scratch.

---

## Overview

UXP provides a rich set of components for building data-driven applications:

- **ObjectSearchComponent** - Advanced data table with search, filters, views, and actions
- **ObjectDetailsPanel** - Collapsible side panel for viewing object details
- **SlideInForm** - Slide-in panel for creating/editing objects
- **DataEntryForm** - Simple form with validation
- **DynamicForm** - Dynamic form builder from configuration
- **ActionsListComponent** - Action buttons with dropdown support
- **ButtonGroup** - Grouped action buttons

We'll build a Location Management view progressively, starting simple and adding features step by step.

---

## Step 1: Simple List

Let's start with a basic list view using `ObjectSearchComponent`:

```typescript
// src/views/portfolio/PortfolioView.tsx
import {
    ObjectSearchComponent,
    useExecuteRequestCallback,
    type OSCColumn,
    type RowData,
    type Filters,
    type Sort
} from "uxp/components";
import { LocationServices } from "../../services";

const PortfolioView = () => {
    const executeGetAll = useExecuteRequestCallback(
        LocationServices.getAll()
    );

    const getAll = async (
        page: number,
        pageSize: number,
        query?: string,
        filters?: Filters,
        sort?: Sort
    ): Promise<{ items: RowData[] }> => {
        const params = { page, pageSize, q: query };
        const { data } = await executeGetAll(params);
        return { items: data || [] };
    };

    const columns: OSCColumn[] = [
        {
            id: 'Name',
            label: 'Name',
            isSortable: true
        },
        {
            id: 'LocationType',
            label: 'Type',
            isSortable: true
        },
        {
            id: 'Status',
            label: 'Status'
        }
    ];

    return (
        <ObjectSearchComponent
            data={getAll}
            idField="Key"
            columns={columns}
            pageSize={50}
        />
    );
};

export default PortfolioView;
```

**Key Points:**
- `useExecuteRequestCallback` creates a callback for API requests
- `getAll` function signature: `(page, pageSize, query?, filters?, sort?) => Promise<{ items: RowData[] }>`
- `columns` uses `OSCColumn[]` type for table structure
- `idField` specifies unique identifier field
- Component handles pagination, search, and sorting automatically

---

## Step 2: Add Filters

Add filters to let users narrow down results:

```typescript
import {
    ObjectSearchComponent,
    useExecuteRequestCallback,
    type OSCColumn,
    type RowData,
    type Filters,
    type Sort,
    type DynamicFormFieldProps
} from "uxp/components";
import { LocationServices } from "../../services";

const PortfolioView = () => {
    const executeGetAll = useExecuteRequestCallback(
        LocationServices.getAll()
    );

    // Fetch data with filters
    const getAll = async (
        page: number,
        pageSize: number,
        query?: string,
        filters?: Filters,
        sort?: Sort
    ): Promise<{ items: RowData[] }> => {
        const params = {
            page,
            pageSize,
            q: query,
            ...filters?.filters  // Spread filter values into params
        };
        const { data } = await executeGetAll(params);
        return { items: data || [] };
    };

    const columns: OSCColumn[] = [
        {
            id: 'Name',
            label: 'Name',
            isSortable: true
        },
        {
            id: 'LocationType',
            label: 'Type',
            isSortable: true
        },
        {
            id: 'Status',
            label: 'Status'
        }
    ];

    // Define filter fields
    const filterFields: DynamicFormFieldProps[] = [
        {
            name: 'LocationType',
            label: 'Location Type',
            type: 'select',
            value: '',
            options: [
                { label: 'Building', value: 'Building' },
                { label: 'Floor', value: 'Floor' },
                { label: 'Room', value: 'Room' }
            ]
        },
        {
            name: 'Status',
            label: 'Status',
            type: 'select',
            value: '',
            options: [
                { label: 'Active', value: 'Active' },
                { label: 'Inactive', value: 'Inactive' }
            ]
        }
    ];

    return (
        <ObjectSearchComponent
            data={getAll}
            idField="Key"
            columns={columns}
            pageSize={50}
            filters={{
                fields: filterFields
            }}
        />
    );
};

export default PortfolioView;
```

**Filter Configuration:**
- Field type `'select'` - Dropdown filter
- Field type `'text'` - Text input filter
- Field type `'date'` - Date picker filter
- Field type `'checkbox'` - Checkbox filter
- Filter values are automatically passed to your `getAll` function via `filters.filters` object

---

## Step 3: Add Views

Views let users switch between different filtered sets (e.g., "All", "Active", "Archived"):

```typescript
import {
    ObjectSearchComponent,
    useExecuteRequestCallback,
    type OSCColumn,
    type RowData,
    type Filters,
    type Sort,
    type DynamicFormFieldProps,
    type ViewsConfig,
    type View
} from "uxp/components";
import { LocationServices } from "../../services";

const PortfolioView = () => {
    const executeGetAll = useExecuteRequestCallback(
        LocationServices.getAll()
    );

    const getAll = async (
        page: number,
        pageSize: number,
        query?: string,
        filters?: Filters,
        sort?: Sort
    ): Promise<{ items: RowData[] }> => {
        const params = {
            page,
            pageSize,
            q: query,
            ...filters?.filters,
            ...sort
        };
        const { data } = await executeGetAll(params);
        return { items: data || [] };
    };

    const columns: OSCColumn[] = [
        {
            id: 'Name',
            label: 'Name',
            isSortable: true
        },
        {
            id: 'LocationType',
            label: 'Type',
            isSortable: true
        },
        {
            id: 'Status',
            label: 'Status'
        }
    ];

    const filterFields: DynamicFormFieldProps[] = [
        {
            name: 'LocationType',
            label: 'Location Type',
            type: 'select',
            value: '',
            options: [
                { label: 'Building', value: 'Building' },
                { label: 'Floor', value: 'Floor' },
                { label: 'Room', value: 'Room' }
            ]
        }
    ];

    // Define views
    const defaultViews: View[] = [
        {
            id: 'all',
            name: 'All Locations',
            configurations: {
                filters: {}
            }
        },
        {
            id: 'buildings',
            name: 'Buildings Only',
            configurations: {
                filters: {
                    LocationType: 'Building'
                }
            }
        },
        {
            id: 'active',
            name: 'Active',
            configurations: {
                filters: {
                    Status: 'Active'
                }
            }
        }
    ];

    const viewsConfig: ViewsConfig = {
        listId: 'location-portfolio',
        defaultViews: defaultViews,
        allowToMangeCustomViews: true,
        defaultviewId: 'all'
    };

    return (
        <ObjectSearchComponent
            data={getAll}
            idField="Key"
            columns={columns}
            pageSize={50}
            filters={{
                fields: filterFields
            }}
            views={viewsConfig}
        />
    );
};

export default PortfolioView;
```

**Views Configuration:**
- Each view uses `View` interface with `id`, `name`, and `configurations`
- `configurations.filters` contains the filter values
- `defaultviewId` sets which view loads initially
- `allowToMangeCustomViews` enables user-created custom views
- Switching views applies the view's filter automatically
- Users can still add additional filters on top of view filters

---

## Step 4: Add Details Panel

Show detailed information about a selected item using `ObjectDetailsPanel`:

```typescript
import {
    ObjectSearchComponent,
    useExecuteRequestCallback,
    useRouterContext,
    type OSCColumn,
    type RowData,
    type Filters,
    type Sort,
    type CustomDetailsPanelProps
} from "uxp/components";
import { LocationServices } from "../../services";
import LocationDetailsPanel from "../../components/location-details-panel/LocationDetailsPanel";

const PortfolioView = () => {
    const { location } = useRouterContext();
    const selectedKey = new URLSearchParams(location?.search || '').get('selectedKey');

    const executeGetAll = useExecuteRequestCallback(
        LocationServices.getAll()
    );

    const getAll = async (
        page: number,
        pageSize: number,
        query?: string,
        filters?: Filters,
        sort?: Sort
    ): Promise<{ items: RowData[] }> => {
        const params = {
            page,
            pageSize,
            q: query,
            ...filters?.filters,
            ...sort
        };
        const { data } = await executeGetAll(params);
        return { items: data || [] };
    };

    const columns: OSCColumn[] = [
        {
            id: 'Name',
            label: 'Name',
            isSortable: true
        },
        {
            id: 'LocationType',
            label: 'Type',
            isSortable: true
        },
        {
            id: 'Status',
            label: 'Status'
        }
    ];

    const detailsPanel: CustomDetailsPanelProps = {
        renderDetails: (itemId: string | number, onClose: () => void) => (
            <LocationDetailsPanel
                locationKey={itemId as string}
                onClose={onClose}
            />
        ),
        collapsed: true
    };

    return (
        <ObjectSearchComponent
            data={getAll}
            idField="Key"
            columns={columns}
            pageSize={50}
            detailsPanel={detailsPanel}
        />
    );
};

export default PortfolioView;
```

**Creating a Details Panel Component:**

```typescript
// src/components/location-details-panel/LocationDetailsPanel.tsx
import React from "react";
import { useExecuteRequest } from "uxp/components";
import { LocationServices } from "../../services";
import type { ExecuteConfig } from "uxp/components";

interface LocationData {
    Key: string;
    Name: string;
    LocationType: string;
    Status: string;
    Street: string;
    City: string;
    Country: string;
}

interface ILocationDetailsPanelProps {
    locationKey: string;
    onClose: () => void;
}

const LocationDetailsPanel: React.FC<ILocationDetailsPanelProps> = ({ locationKey, onClose }) => {
    const [location, loading] = useExecuteRequest<LocationData>(
        LocationServices.get() as ExecuteConfig,
        { key: locationKey },
        [locationKey]
    );

    if (loading) {
        return <div>Loading...</div>;
    }

    if (!location) {
        return <div>Location not found</div>;
    }

    return (
        <div className="location-details">
            <div className="details-header">
                <h2>{location.Name}</h2>
                <span className="subtitle">{location.LocationType}</span>
                <button onClick={onClose}>Close</button>
            </div>

            <div className="details-section">
                <h3>Basic Information</h3>
                <div className="field">
                    <label>Name:</label>
                    <span>{location.Name}</span>
                </div>
                <div className="field">
                    <label>Type:</label>
                    <span>{location.LocationType}</span>
                </div>
                <div className="field">
                    <label>Status:</label>
                    <span>{location.Status}</span>
                </div>
            </div>

            <div className="details-section">
                <h3>Address</h3>
                <div className="field">
                    <label>Street:</label>
                    <span>{location.Street}</span>
                </div>
                <div className="field">
                    <label>City:</label>
                    <span>{location.City}</span>
                </div>
                <div className="field">
                    <label>Country:</label>
                    <span>{location.Country}</span>
                </div>
            </div>
        </div>
    );
};

export default LocationDetailsPanel;
```

**Details Panel Features:**
- `CustomDetailsPanelProps` provides `renderDetails` function
- `renderDetails` receives `itemId` (from row's `idField`) and `onClose` callback
- `collapsed` prop controls initial state
- Panel opens when user clicks a row
- Uses URL params to track selection
- Define proper interfaces for your data types (`LocationData`)

---

## Step 5: Add Forms (Create/Edit)

Add forms for creating and editing objects using `SlideInForm`:

### 5.1: Using SlideInForm with DynamicForm

```typescript
import React, { useState } from "react";
import {
    ObjectSearchComponent,
    useExecuteRequestCallback,
    type OSCColumn,
    type RowData,
    type Filters,
    type Sort,
    type DynamicFormFieldProps,
    type IFormData
} from "uxp/components";
import { LocationServices } from "../../services";
import LocationFormComponent from "../../components/location-form/LocationFormComponent";

interface LocationData extends RowData {
    Key: string;
    Name: string;
    LocationType: string;
    Status: string;
}

const PortfolioView = () => {
    const [showForm, setShowForm] = useState(false);
    const [editingLocation, setEditingLocation] = useState<LocationData | null>(null);

    const executeGetAll = useExecuteRequestCallback(
        LocationServices.getAll()
    );

    const getAll = async (
        page: number,
        pageSize: number,
        query?: string,
        filters?: Filters,
        sort?: Sort
    ): Promise<{ items: RowData[] }> => {
        const params = { page, pageSize, q: query, ...filters?.filters, ...sort };
        const { data } = await executeGetAll(params);
        return { items: data || [] };
    };

    const columns: OSCColumn[] = [
        {
            id: 'Name',
            label: 'Name',
            isSortable: true
        },
        {
            id: 'LocationType',
            label: 'Type',
            isSortable: true
        },
        {
            id: 'Status',
            label: 'Status'
        }
    ];

    return (
        <>
            <ObjectSearchComponent
                data={getAll}
                idField="Key"
                columns={columns}
                pageSize={50}
                actionButtons={
                    <button onClick={() => {
                        setEditingLocation(null);
                        setShowForm(true);
                    }}>
                        Add Location
                    </button>
                }
            />

            {showForm && (
                <LocationFormComponent
                    location={editingLocation}
                    onClose={() => {
                        setShowForm(false);
                        setEditingLocation(null);
                    }}
                    onSave={() => {
                        setShowForm(false);
                        setEditingLocation(null);
                        // Refresh list
                    }}
                />
            )}
        </>
    );
};

export default PortfolioView;
```

### 5.2: Creating the Form Component

```typescript
// src/components/location-form/LocationFormComponent.tsx
import React, { useRef } from "react";
import {
    SlideInForm,
    useExecuteRequestCallback,
    type SlideInFormHandlers,
    type FormSectionProps,
    type IFormData,
    type DynamicFormFieldProps
} from "uxp/components";
import { LocationServices } from "../../services";

interface LocationData {
    Key?: string;
    Name?: string;
    LocationType?: string;
    ParentLocation?: string;
    Street?: string;
    City?: string;
    Country?: string;
    Status?: string;
}

interface ILocationFormProps {
    location: LocationData | null;
    onClose: () => void;
    onSave: () => void;
}

const LocationFormComponent: React.FC<ILocationFormProps> = ({ location, onClose, onSave }) => {
    const formRef = useRef<SlideInFormHandlers>(null);
    const executeCreate = useExecuteRequestCallback(LocationServices.create());
    const executeUpdate = useExecuteRequestCallback(LocationServices.update());
    const executeGetAll = useExecuteRequestCallback(LocationServices.getAll());

    // Paginated options for parent location
    const getPaginatedOptions = async (
        data: IFormData,
        max: number,
        lastPageToken: string
    ) => {
        const page = parseInt(lastPageToken) || 1;
        const { data: locations } = await executeGetAll({ page, pageSize: max });

        return {
            items: (locations || []).map((loc: LocationData) => ({
                label: loc.Name,
                value: loc.Key
            })),
            pageToken: (page + 1).toString(),
            total: locations?.length || 0
        };
    };

    // Get selected option label
    const selectedOptionLabel = async (data: IFormData, selected: string) => {
        const { data: location } = await LocationServices.get().execute({ key: selected });
        return location?.Name || selected;
    };

    const formStructure: FormSectionProps[] = [
        {
            title: 'Basic Information',
            columns: 2,
            fields: [
                {
                    name: 'Name',
                    label: 'Location Name',
                    type: 'text',
                    value: location?.Name || '',
                    validate: {
                        required: true,
                        minLength: 3
                    }
                },
                {
                    name: 'LocationType',
                    label: 'Location Type',
                    type: 'select',
                    value: location?.LocationType || '',
                    options: [
                        { label: 'Building', value: 'Building' },
                        { label: 'Floor', value: 'Floor' },
                        { label: 'Room', value: 'Room' }
                    ],
                    validate: {
                        required: true
                    }
                },
                {
                    name: 'ParentLocation',
                    label: 'Parent Location',
                    type: 'select',
                    value: location?.ParentLocation || '',
                    getPaginatedOptions: getPaginatedOptions,
                    selectedOptionLabel: selectedOptionLabel,
                    // Only show for Floor and Room types
                    show: (data: IFormData) =>
                        data.LocationType === 'Floor' || data.LocationType === 'Room'
                }
            ] as DynamicFormFieldProps[]
        },
        {
            title: 'Address',
            columns: 1,
            fields: [
                {
                    name: 'Street',
                    label: 'Street Address',
                    type: 'text',
                    value: location?.Street || ''
                },
                {
                    name: 'City',
                    label: 'City',
                    type: 'text',
                    value: location?.City || ''
                },
                {
                    name: 'Country',
                    label: 'Country',
                    type: 'text',
                    value: location?.Country || ''
                }
            ] as DynamicFormFieldProps[]
        },
        {
            title: 'Status',
            columns: 1,
            fields: [
                {
                    name: 'Status',
                    label: 'Status',
                    type: 'select',
                    value: location?.Status || 'Active',
                    options: [
                        { label: 'Active', value: 'Active' },
                        { label: 'Inactive', value: 'Inactive' }
                    ]
                }
            ] as DynamicFormFieldProps[]
        }
    ];

    const handleSave = async (formData: IFormData) => {
        if (location?.Key) {
            const { error } = await executeUpdate({ ...formData, Key: location.Key });
            if (error) return { success: false, error };
        } else {
            const { error } = await executeCreate(formData);
            if (error) return { success: false, error };
        }

        onSave();
        return { success: true };
    };

    return (
        <SlideInForm
            ref={formRef}
            isOpen={true}
            onClose={onClose}
            title={location ? "Edit Location" : "Add Location"}
            formStructure={formStructure}
            onSave={handleSave}
            renderMode="dynamic"
        />
    );
};

export default LocationFormComponent;
```

**Form Features:**
- **FormSectionProps[]**: Organize form into sections
- **DynamicFormFieldProps**: Each field with proper type definitions
- **Conditional visibility**: `show` property based on form data
- **Paginated options**: `getPaginatedOptions` for large datasets
- **Custom label resolvers**: `selectedOptionLabel` for async selects
- **Validation**: Built-in validation with `validate` property
- **Type safety**: All interfaces properly defined

---

## Step 6: Add Actions (Edit, Delete)

Add action buttons to each row using `useDeleteAction`:

```typescript
import React, { useState } from "react";
import {
    ObjectSearchComponent,
    useExecuteRequestCallback,
    useDeleteAction,
    useRouterContext,
    type OSCColumn,
    type RowData,
    type Filters,
    type Sort,
    type GenerateURLOptions
} from "uxp/components";
import { LocationServices } from "../../services";
import LocationFormComponent from "../../components/location-form/LocationFormComponent";

interface LocationData extends RowData {
    Key: string;
    Name: string;
    LocationType: string;
    Status: string;
}

const PortfolioView = () => {
    const { navigate, generateURL } = useRouterContext();
    const [showForm, setShowForm] = useState(false);
    const [editingLocation, setEditingLocation] = useState<LocationData | null>(null);
    const [refreshKey, setRefreshKey] = useState(0);

    // Delete action hook
    const deleteAction = useDeleteAction();

    const executeGetAll = useExecuteRequestCallback(
        LocationServices.getAll()
    );

    const getAll = async (
        page: number,
        pageSize: number,
        query?: string,
        filters?: Filters,
        sort?: Sort
    ): Promise<{ items: RowData[] }> => {
        const params = { page, pageSize, q: query, ...filters?.filters, ...sort };
        const { data } = await executeGetAll(params);
        return { items: data || [] };
    };

    const handleDelete = async (item: LocationData) => {
        await deleteAction.delete({
            model: 'Location.Location',
            key: item.Key,
            canHide: true,
            onSuccess: (action) => {
                if (action === 'delete') {
                    console.log('Location deleted');
                } else {
                    console.log('Location hidden');
                }
                setRefreshKey(prev => prev + 1);
            },
            onError: (error) => {
                console.error('Delete failed:', error);
            }
        });
    };

    const columns: OSCColumn[] = [
        {
            id: 'Name',
            label: 'Name',
            isSortable: true,
            renderColumn: (item: LocationData) => {
                const urlOptions: GenerateURLOptions = {
                    searchParams: { selectedKey: item.Key }
                };

                return (
                    <a
                        href={generateURL(urlOptions)}
                        onClick={(e) => {
                            e.preventDefault();
                            if (navigate) {
                                navigate(generateURL(urlOptions));
                            }
                        }}
                    >
                        {item.Name}
                    </a>
                );
            }
        },
        {
            id: 'LocationType',
            label: 'Type',
            isSortable: true
        },
        {
            id: 'Status',
            label: 'Status'
        },
        {
            id: 'actions',
            label: 'Actions',
            renderColumn: (item: LocationData) => (
                <div className="action-buttons">
                    <button onClick={() => {
                        setEditingLocation(item);
                        setShowForm(true);
                    }}>
                        Edit
                    </button>
                    <button onClick={() => handleDelete(item)}>
                        {item.Status === 'Active' ? 'Delete' : 'Make Visible'}
                    </button>
                </div>
            )
        }
    ];

    return (
        <>
            <ObjectSearchComponent
                data={getAll}
                idField="Key"
                columns={columns}
                pageSize={50}
                actionButtons={
                    <button onClick={() => {
                        setEditingLocation(null);
                        setShowForm(true);
                    }}>
                        Add Location
                    </button>
                }
                key={refreshKey}
            />

            {showForm && (
                <LocationFormComponent
                    location={editingLocation}
                    onClose={() => {
                        setShowForm(false);
                        setEditingLocation(null);
                    }}
                    onSave={() => {
                        setShowForm(false);
                        setEditingLocation(null);
                        setRefreshKey(prev => prev + 1);
                    }}
                />
            )}
        </>
    );
};

export default PortfolioView;
```

**Action Features:**
- **useDeleteAction()**: Returns object with `delete()` method
- **DeleteActionParams**: Interface for delete configuration
  - `model`: Model name in format "App.Model"
  - `key`: Primary key of object to delete
  - `canHide`: Allow hiding if delete fails due to dependencies
  - `onSuccess`: Callback with action type ('delete' | 'hide')
  - `onError`: Error callback
- **Custom Actions**: Render actions in columns with `renderColumn`
- **Refresh pattern**: Use `key` prop with state to force re-render

---

## Core Hooks Reference

### useSearchParams

Manage URL search parameters for state persistence:

**Signature:**
```typescript
function useSearchParams<T = Record<string, any>>(): T
```

**Example:**
```typescript
import { useSearchParams } from "uxp/components";

interface SearchParams {
    selectedKey?: string;
    view?: string;
    page?: string;
}

const MyView = () => {
    const params = useSearchParams<SearchParams>();

    // Access params directly
    const selectedKey = params.selectedKey;
    const view = params.view;

    return <div>Selected: {selectedKey}</div>;
};
```

**Note:** Returns the search params object directly. To modify params, use `useRouterContext().navigate()` or `generateURL()`.

### useRouterContext

Access navigation utilities and router state:

**Signature:**
```typescript
function useRouterContext(): RouterContextValue

interface RouterContextValue {
    location: Location<any> | null;
    navigate: EnhancedNavigateFunction | null;
    params: Readonly<Params<string>> | null;
    hasRouter: boolean;
    generateURL: (options: GenerateURLOptions) => string;
}
```

**Example:**
```typescript
import { useRouterContext, type GenerateURLOptions } from "uxp/components";

const MyView = () => {
    const { navigate, generateURL, location, params } = useRouterContext();

    // Navigate with search params
    const handleNavigate = () => {
        const url = generateURL({
            searchParams: { selectedKey: 'LOC-123' }
        });
        if (navigate) {
            navigate(url);
        }
    };

    // Generate URL for href
    const detailsUrl = generateURL({
        path: '/view/location/details/LOC-123'
    });

    // Access route params
    const routeParam = params?.locationKey;

    return <a href={detailsUrl}>View Details</a>;
};
```

### useDeleteAction

Pre-built hook for delete/restore operations with dependency checking:

**Signature:**
```typescript
function useDeleteAction(): UseDeleteActionResult

interface UseDeleteActionResult {
    delete: (params: DeleteActionParams) => Promise<void>;
    makeVisible: (params: MakeVisibleActionParams) => Promise<void>;
}

interface DeleteActionParams {
    model: string;
    key: string | number;
    canHide?: boolean;
    deleteTitle?: string;
    deleteMessage?: string;
    hideMessage?: string;
    onSuccess?: (action: 'delete' | 'hide') => void;
    onCancel?: () => void;
    onError?: (error: string) => void;
}
```

**Example:**
```typescript
import { useDeleteAction, type DeleteActionParams } from "uxp/components";

const MyView = () => {
    const deleteAction = useDeleteAction();

    const handleDelete = async (locationKey: string) => {
        const params: DeleteActionParams = {
            model: 'Location.Location',
            key: locationKey,
            canHide: true,
            onSuccess: (action) => {
                console.log(`Location ${action === 'delete' ? 'deleted' : 'hidden'}`);
            },
            onError: (error) => {
                console.error('Action failed:', error);
            }
        };

        await deleteAction.delete(params);
    };

    return <button onClick={() => handleDelete('LOC-123')}>Delete</button>;
};
```

### useExecuteRequest

Execute API request with automatic loading state, debounce, and polling:

**Signature:**
```typescript
function useExecuteRequest<T = any>(
    config: ExecuteConfig,
    params?: any,
    dependencies?: any[]
): [T | null, boolean, Error | null, () => void]
```

**Example:**
```typescript
import { useExecuteRequest, type ExecuteConfig } from "uxp/components";
import { LocationServices } from "./services";

interface LocationData {
    Key: string;
    Name: string;
    LocationType: string;
}

const MyView = ({ locationKey }: { locationKey: string }) => {
    const [location, loading, error, refetch] = useExecuteRequest<LocationData>(
        LocationServices.get() as ExecuteConfig,
        { key: locationKey },
        [locationKey]  // Dependencies - refetch when these change
    );

    if (loading) return <div>Loading...</div>;
    if (error) return <div>Error: {error.message}</div>;
    if (!location) return <div>Not found</div>;

    return (
        <div>
            <h1>{location.Name}</h1>
            <p>{location.LocationType}</p>
            <button onClick={refetch}>Refresh</button>
        </div>
    );
};
```

### useExecuteRequestCallback

Create a stable callback for API requests (no state updates):

**Signature:**
```typescript
function useExecuteRequestCallback<T = any>(
    config: ExecuteConfig,
    options?: Omit<UseExecuteOptions<T>, 'debounce' | 'autoExecute' | 'polling'>
): (params?: any) => Promise<ExecutionResult<T>>
```

**Example:**
```typescript
import { useExecuteRequestCallback } from "uxp/components";
import { LocationServices } from "./services";

interface LocationData {
    Key: string;
    Name: string;
}

const MyView = () => {
    const executeCreate = useExecuteRequestCallback(
        LocationServices.create()
    );

    const handleSubmit = async (values: Partial<LocationData>) => {
        const { data, error } = await executeCreate(values);

        if (error) {
            console.error('Failed to create:', error);
            return;
        }

        console.log('Created successfully:', data);
    };

    return (
        <button onClick={() => handleSubmit({ Name: 'New Location' })}>
            Create
        </button>
    );
};
```

### usePluggableView

Make your view customizable/replaceable by other apps:

**Signature:**
```typescript
function usePluggableView(options: PluggableViewOptions): PluggableViewResult

interface PluggableViewOptions {
    pluginId: string;
    defaultComponent: React.ComponentType<any>;
    props?: Record<string, any>;
}
```

**Example:**
```typescript
import { usePluggableView } from "uxp/components";
import DefaultDetailsPanel from "./DefaultDetailsPanel";

interface DetailsPanelProps {
    locationKey: string;
    onClose: () => void;
}

const MyView = () => {
    const { PluggableComponent, isPlugged } = usePluggableView({
        pluginId: 'location-details-panel',
        defaultComponent: DefaultDetailsPanel,
        props: {
            locationKey: 'LOC-123',
            onClose: () => console.log('Closed')
        }
    });

    return (
        <div>
            {isPlugged && <p>Using custom component</p>}
            <PluggableComponent />
        </div>
    );
};
```

### useMultiEventSubscriber

Subscribe to multiple real-time events:

**Signature:**
```typescript
function useMultiEventSubscriber(subscriptions: EventSubscription[]): void

interface EventSubscription {
    event: string;
    handler: (data: any) => void;
}
```

**Example:**
```typescript
import { useMultiEventSubscriber } from "uxp/components";

interface LocationEvent {
    key: string;
    name: string;
    action: 'created' | 'updated' | 'deleted';
}

const MyView = () => {
    useMultiEventSubscriber([
        {
            event: 'location-created',
            handler: (data: LocationEvent) => {
                console.log('New location created:', data.name);
                // Refresh list or add item
            }
        },
        {
            event: 'location-updated',
            handler: (data: LocationEvent) => {
                console.log('Location updated:', data.key);
                // Update specific item in list
            }
        },
        {
            event: 'location-deleted',
            handler: (data: LocationEvent) => {
                console.log('Location deleted:', data.key);
                // Remove item from list
            }
        }
    ]);

    return <div>My View with Real-time Updates</div>;
};
```

---

## Component API Reference

For detailed API documentation, see the generated docs:

### Core Components

- **[ObjectSearchComponent](../../uxp/docs/ObjectSearchComponent.md)** - Advanced data table
- **[ObjectDetailsPanel](../../uxp/docs/ObjectDetailsPanel.md)** - Side panel for object details
- **[SlideInForm](../../uxp/docs/SlideInForm.md)** - Slide-in form panel
- **[DataEntryForm](../../uxp/docs/DataEntryForm.md)** - Simple form with validation
- **[DynamicForm](../../uxp/docs/DynamicForm.md)** - Dynamic form builder

### Action Components

- **[ActionsListComponent](../../uxp/docs/ActionsListComponent.md)** - Action buttons with dropdown
- **[ButtonGroup](../../uxp/docs/ButtonGroup.md)** - Grouped buttons
- **[Button](../../uxp/docs/Button.md)** - Standard button component

### Layout Components

- **[TitleBar](../../uxp/docs/TitleBar.md)** - Page title bar
- **[WidgetWrapper](../../uxp/docs/WidgetWrapper.md)** - Widget container

### Form Components

- **[Input](../../uxp/docs/Input.md)** - Text input
- **[Select](../../uxp/docs/Select.md)** - Dropdown select
- **[DatePicker](../../uxp/docs/DatePicker.md)** - Date picker
- **[Checkbox](../../uxp/docs/Checkbox.md)** - Checkbox input

---

## Complete Example

Here's the full PortfolioView with all features and proper TypeScript types:

```typescript
// src/views/portfolio/PortfolioView.tsx
import React, { useState } from "react";
import {
    ObjectSearchComponent,
    useExecuteRequestCallback,
    useExecuteRequest,
    useDeleteAction,
    useRouterContext,
    useMultiEventSubscriber,
    usePluggableView,
    useSearchParams,
    type OSCColumn,
    type RowData,
    type Filters,
    type Sort,
    type DynamicFormFieldProps,
    type ViewsConfig,
    type View,
    type CustomDetailsPanelProps,
    type ExecuteConfig,
    type GenerateURLOptions,
    type DeleteActionParams
} from "uxp/components";
import { LocationServices } from "../../services";
import LocationFormComponent from "../../components/location-form/LocationFormComponent";
import LocationDetailsPanel from "../../components/location-details-panel/LocationDetailsPanel";

interface SearchParams {
    selectedKey?: string;
    view?: string;
}

interface LocationData extends RowData {
    Key: string;
    Name: string;
    LocationType: string;
    Street: string;
    City: string;
    Status: string;
}

const PortfolioView = () => {
    const { navigate, generateURL, location } = useRouterContext();
    const searchParams = useSearchParams<SearchParams>();
    const [showForm, setShowForm] = useState(false);
    const [editingLocation, setEditingLocation] = useState<LocationData | null>(null);
    const [refreshKey, setRefreshKey] = useState(0);

    const selectedKey = searchParams.selectedKey;

    // Load location types for filters
    const [locationTypes] = useExecuteRequest<string[]>(
        LocationServices.getLocationTypes() as ExecuteConfig,
        {},
        []
    );

    // Delete action
    const deleteAction = useDeleteAction();

    // Data fetching
    const executeGetAll = useExecuteRequestCallback(
        LocationServices.getAll()
    );

    const getAll = async (
        page: number,
        pageSize: number,
        query?: string,
        filters?: Filters,
        sort?: Sort
    ): Promise<{ items: RowData[] }> => {
        const params = {
            page,
            pageSize,
            q: query,
            ...filters?.filters,
            ...sort
        };
        const { data } = await executeGetAll(params);
        return { items: data || [] };
    };

    // Real-time updates
    useMultiEventSubscriber([
        {
            event: 'location-created',
            handler: () => setRefreshKey(prev => prev + 1)
        },
        {
            event: 'location-updated',
            handler: () => setRefreshKey(prev => prev + 1)
        }
    ]);

    // Delete handler
    const handleDelete = async (item: LocationData) => {
        const params: DeleteActionParams = {
            model: 'Location.Location',
            key: item.Key,
            canHide: true,
            onSuccess: () => {
                setRefreshKey(prev => prev + 1);
            }
        };
        await deleteAction.delete(params);
    };

    // Columns
    const columns: OSCColumn[] = [
        {
            id: 'Name',
            label: 'Name',
            isSortable: true,
            renderColumn: (item: LocationData) => {
                const urlOptions: GenerateURLOptions = {
                    searchParams: { selectedKey: item.Key }
                };
                return (
                    <a
                        href={generateURL(urlOptions)}
                        onClick={(e) => {
                            e.preventDefault();
                            if (navigate) {
                                navigate(generateURL(urlOptions));
                            }
                        }}
                    >
                        {item.Name}
                    </a>
                );
            }
        },
        {
            id: 'LocationType',
            label: 'Type',
            isSortable: true
        },
        {
            id: 'Address',
            label: 'Address',
            renderColumn: (item: LocationData) => (
                <span>{item.Street}, {item.City}</span>
            )
        },
        {
            id: 'Status',
            label: 'Status',
            renderColumn: (item: LocationData) => (
                <span className={`status-badge status-${item.Status.toLowerCase()}`}>
                    {item.Status}
                </span>
            )
        },
        {
            id: 'actions',
            label: 'Actions',
            renderColumn: (item: LocationData) => (
                <div className="action-buttons">
                    <button onClick={() => {
                        setEditingLocation(item);
                        setShowForm(true);
                    }}>
                        Edit
                    </button>
                    <button onClick={() => handleDelete(item)}>
                        {item.Status === 'Active' ? 'Delete' : 'Make Visible'}
                    </button>
                </div>
            )
        }
    ];

    // Filters
    const filterFields: DynamicFormFieldProps[] = [
        {
            name: 'LocationType',
            label: 'Location Type',
            type: 'select',
            value: '',
            options: locationTypes?.map((type: string) => ({
                label: type,
                value: type
            })) || []
        },
        {
            name: 'Status',
            label: 'Status',
            type: 'select',
            value: '',
            options: [
                { label: 'Active', value: 'Active' },
                { label: 'Inactive', value: 'Inactive' }
            ]
        }
    ];

    // Views
    const defaultViews: View[] = [
        {
            id: 'all',
            name: 'All Locations',
            configurations: {
                filters: {}
            }
        },
        {
            id: 'buildings',
            name: 'Buildings',
            configurations: {
                filters: { LocationType: 'Building' }
            }
        },
        {
            id: 'floors',
            name: 'Floors',
            configurations: {
                filters: { LocationType: 'Floor' }
            }
        },
        {
            id: 'active',
            name: 'Active',
            configurations: {
                filters: { Status: 'Active' }
            }
        }
    ];

    const viewsConfig: ViewsConfig = {
        listId: 'location-portfolio',
        defaultViews: defaultViews,
        allowToMangeCustomViews: true,
        defaultviewId: 'all'
    };

    // Pluggable details panel
    const { PluggableComponent: DetailsPanel } = usePluggableView({
        pluginId: 'location-details-panel',
        defaultComponent: LocationDetailsPanel,
        props: {
            locationKey: selectedKey || '',
            onClose: () => {
                if (navigate) {
                    const url = generateURL({ removeParams: ['selectedKey'] });
                    navigate(url);
                }
            }
        }
    });

    const detailsPanel: CustomDetailsPanelProps = {
        renderDetails: (itemId: string | number, onClose: () => void) => (
            <DetailsPanel />
        ),
        collapsed: true
    };

    return (
        <>
            <ObjectSearchComponent
                data={getAll}
                idField="Key"
                columns={columns}
                pageSize={50}
                filters={{
                    fields: filterFields
                }}
                views={viewsConfig}
                actionButtons={
                    <button onClick={() => {
                        setEditingLocation(null);
                        setShowForm(true);
                    }}>
                        Add Location
                    </button>
                }
                detailsPanel={detailsPanel}
                key={refreshKey}
            />

            {showForm && (
                <LocationFormComponent
                    location={editingLocation}
                    onClose={() => {
                        setShowForm(false);
                        setEditingLocation(null);
                    }}
                    onSave={() => {
                        setShowForm(false);
                        setEditingLocation(null);
                        setRefreshKey(prev => prev + 1);
                    }}
                />
            )}
        </>
    );
};

export default PortfolioView;
```

**Key Type Features in Complete Example:**
- All interfaces properly defined (`SearchParams`, `LocationData`)
- Type imports using `type` keyword
- Proper generic usage: `useExecuteRequest<string[]>`, `useSearchParams<SearchParams>`
- All callbacks properly typed with parameter and return types
- `OSCColumn[]` for columns
- `DynamicFormFieldProps[]` for filter fields
- `View[]` and `ViewsConfig` for views configuration
- `DeleteActionParams` for delete operations
- `GenerateURLOptions` for URL generation
- No `any` types - everything explicitly typed

---

## Next Steps

Now that you understand core components, continue to:

- [Step 8: Data Fetching](./08-data-fetching.md) - Advanced data fetching patterns
- [Step 9: Events and Synchronization](./09-events.md) - Real-time updates and event handling
- [Step 10: External Components](./10-external-components.md) - Using third-party components
- [Step 11: Pluggable Views](./11-pluggable-views.md) - Making your views customizable
