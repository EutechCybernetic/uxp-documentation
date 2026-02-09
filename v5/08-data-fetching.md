# Data Fetching

Centralized service configurations with hooks for executing API requests.

---

## Why This Pattern?

Instead of manual state management in every component:
```typescript
const [loading, setLoading] = useState(false);
const [data, setData] = useState([]);
const [error, setError] = useState(null);
// ... manual API calls
```

Use this:
```typescript
const { loading, data, error } = useExecuteRequest(LocationServices.getAll());
```

**Benefits:** DRY, type-safe, auto state management, built-in debouncing/polling

---

## Service Configurations

Define all API calls in `services.ts`:

```typescript
// src/services.ts
import { ExecuteServiceConfig } from 'uxp/components';

export const LocationServices = {
  getAll: (params = {}): ExecuteServiceConfig => ({
    type: 'service',
    app: 'Location',
    service: 'Location:GetAllLocations',
    parameters: params,
    options: { json: true },
    defaultValue: []
  })
};

export const LocationTypeServices = {
  getAll: (): ExecuteServiceConfig => ({
    type: 'service',
    app: 'Location',
    service: 'LocationType:All',
    parameters: {
      __sort__: 'SortOrderValue',
      __sortorder__: 'asc'
    },
    options: { json: true },
    defaultValue: []
  }),

  create: (locationType: string): ExecuteServiceConfig => ({
    type: 'service',
    app: 'Location',
    service: 'LocationType:Create',
    parameters: { LocationType: locationType },
    options: { json: true }
  }),

  update: (locationType: LocationType): ExecuteServiceConfig => ({
    type: 'service',
    app: 'Location',
    service: 'LocationType:Update',
    parameters: {
      LocationTypeKey: locationType.LocationTypeKey,
      LocationType: locationType.LocationType
    },
    options: { json: true }
  }),

  delete: (locationType: LocationType): ExecuteServiceConfig => ({
    type: 'service',
    app: 'Location',
    service: 'LocationType:DeleteEx',
    parameters: {
      LocationTypeKey: locationType.LocationTypeKey
    },
    options: {}
  })
};
```

### Config Types

| Type | Use For |
|------|---------|
| `service` | Lucy services: `app: 'Location', service: 'Location:GetAll'` |
| `action` | Model actions: `model: 'Location', action: 'GetAll'` |
| `microservice` | Microservices: `serviceName: 'analytics', route: '/metrics'` |
| `api` | Direct HTTP: `url: 'https://api.example.com/data'` |

### Key Options

- **defaultValue** - Fallback when data is null or error
- **extractData** - Extract specific data: `[0]`, `'items'`, `[0, 'items']`
- **transformData** - Transform data after extraction

---

## Three Ways to Execute

### 1. useExecuteRequest Hook

**Use when:** Component needs loading/data/error state

```typescript
// Auto-execute on mount
const { loading, data, error } = useExecuteRequest(
  LocationServices.getAll()
);

// Execute when dependency changes
const { loading, data: locationTypes } = useExecuteRequest(
  LocationTypeServices.getAll(),
  { dependencies: [] }
);

// Manual execution
const { loading, execute } = useExecuteRequest(
  LocationTypeServices.create(''),
  { autoExecute: false }
);
await execute({ LocationType: 'Building' }, true);

// With debouncing
const { data } = useExecuteRequest(
  LocationServices.getAll({ q: searchQuery }),
  { dependencies: [searchQuery], debounce: 500 }
);

// With polling
const { data } = useExecuteRequest(
  MetricsServices.getCurrent(),
  { polling: 5000 }  // Refresh every 5s
);
```

### 2. executeConfig Function

**Use when:** Callbacks, event handlers, no state needed

```typescript
import { executeConfig, useUXPContext, hasValue } from 'uxp/components';

const context = useUXPContext();

// ObjectSearchComponent callback
const getAll = async (page, pageSize, query, filters) => {
  const params: any = {
    page,
    pageSize,
    q: query
  };

  // IMPORTANT: Filters structure is filters.filters.FieldName
  if (filters?.filters) {
    Object.entries(filters.filters).forEach(([key, value]) => {
      if (hasValue(value)) {
        params[key] = value;
      }
    });
  }

  const { data, error } = await executeConfig(context, LocationServices.getAll(params));

  if (error) return { items: [] };
  return { items: data || [] };
};

// Event handler
const handleDelete = async (item) => {
  const { error } = await executeConfig(
    context,
    LocationTypeServices.delete(item)
  );
  if (error) {
    toast.error('Failed to delete');
  } else {
    toast.success('Deleted successfully');
  }
};
```

### 3. useExecuteRequestCallback Hook

**Use when:** Need stable callback with dynamic parameters

```typescript
// For search/autocomplete
const searchLocations = useExecuteRequestCallback(
  LocationServices.getAll()
);

const handleSearch = async (query) => {
  const { data } = await searchLocations({ q: query });
  return data || [];
};
```

---

## Quick Reference

| Tool | State Updates | Use Case |
|------|---------------|----------|
| `useExecuteRequest` | ✅ Auto | Component data loading |
| `executeConfig` | ❌ None | Callbacks, event handlers |
| `useExecuteRequestCallback` | ❌ None | Stable callbacks with params |

---

## Complete Example

```typescript
import { useExecuteRequest, executeConfig, useUXPContext } from 'uxp/components';
import { LocationTypeServices } from './services';

function LocationTypeManager() {
  const context = useUXPContext();

  // Auto-load on mount
  const { loading, data: locationTypes, refresh } = useExecuteRequest(
    LocationTypeServices.getAll()
  );

  // Delete handler
  const handleDelete = async (item) => {
    const { error } = await executeConfig(
      context,
      LocationTypeServices.delete(item)
    );

    if (!error) {
      toast.success('Deleted!');
      refresh(true);
    }
  };

  if (loading) return <div>Loading...</div>;

  return (
    <div>
      {locationTypes?.map(type => (
        <div key={type.LocationTypeKey}>
          {type.LocationType}
          <button onClick={() => handleDelete(type)}>
            Delete
          </button>
        </div>
      ))}
    </div>
  );
}
```

---

## Filter Patterns for ObjectSearchComponent

⚠️ **CRITICAL:** Common filter implementation mistakes

### Understanding Filter Structure

Filters from ObjectSearchComponent are passed with **nested structure**:

```typescript
// ❌ WRONG - filters.FieldName doesn't exist
const value = filters?.UserKey;

// ✅ CORRECT - Use filters.filters.FieldName
const value = filters?.filters?.UserKey;
```

### Complete Filter Pattern

```typescript
import { hasValue } from 'uxp/components';

const getAll = async (page, pageSize, query, filters, sort) => {
  const params: any = {
    max: pageSize,
    last: (page - 1) * pageSize,
    q: query || ''
  };

  // Process all filter values
  if (filters?.filters) {
    Object.entries(filters.filters).forEach(([key, value]) => {
      if (!hasValue(value)) return; // Skip empty values

      // Special handling for dates
      if (key === 'StartDate') {
        params[key] = startOfDay(new Date(value)).toISOString();
      } else if (key === 'EndDate') {
        params[key] = endOfDay(new Date(value)).toISOString();
      } else {
        params[key] = value;
      }
    });
  }

  const { data } = await executeGetAll(params);
  return { items: data || [] };
};
```

### Paginated Select Fields

Use `getPaginatedOptions` with `selectedOptionLabel`:

```typescript
import { useCallback } from 'react';
import { useUXPContext, executeConfig } from 'uxp/components';

const context = useUXPContext();

// useCallback for paginated options
const getUserOptions = useCallback(async (formData, max, lastPageToken) => {
  const { data: users } = await executeConfig(
    context,
    UserServices.getAll({ max, last: parseInt(lastPageToken) || 0 })
  );
  return {
    items: users || [],
    pageToken: String((parseInt(lastPageToken) || 0) + (users?.length || 0))
  };
}, [context]); // Only context - NO toast, alert, navigate, generateURL

// In FilterConfig
const filterConfig = {
  formFields: [{
    fields: [
      {
        name: 'UserKey',
        label: 'User',
        type: 'select',
        getPaginatedOptions: getUserOptions,
        labelField: 'LoginID',   // Field to display
        valueField: 'UserKey',    // Field for value
        selectedOptionLabel: async (data, selected) => {
          // Required to show selected value
          const { data: users } = await executeConfig(context,
            UserServices.getAll({ UserKey: selected, max: 1 }));
          return users?.[0] || null;
        }
      }
    ]
  }]
};
```

### Cascading Dropdowns

Use `dependsOn` for parent-child relationships:

```typescript
const [selectedAppName, setSelectedAppName] = useState('');

const getObjectTypes = useCallback(async (formData, max, lastPageToken) => {
  const appName = formData.AppName;
  if (!appName) return { items: [], pageToken: '' };

  const { data: items } = await executeConfig(context,
    Services.getObjectTypes({ AppName: appName, max, last: parseInt(lastPageToken) || 0 }));
  return {
    items: items || [],
    pageToken: String((parseInt(lastPageToken) || 0) + (items?.length || 0))
  };
}, [context]);

// In FilterConfig
{
  name: 'AppName',
  type: 'select',
  options: apps.map(a => ({ label: a.AppLabel, value: a.AppName })),
  onChange: (value) => setSelectedAppName(value)
},
{
  name: 'ObjectType',
  type: 'select',
  getPaginatedOptions: getObjectTypes,
  labelField: 'ObjectTypeName',
  valueField: 'ObjectType',
  disabled: !selectedAppName,
  dependsOn: ['AppName'] // Re-fetch when AppName changes
}
```

### Date Field Conversion

Date fields need ISO string conversion:

```typescript
import { startOfDay, endOfDay } from 'date-fns';

// In getAll function
if (filters?.filters) {
  Object.entries(filters.filters).forEach(([key, value]) => {
    if (!hasValue(value)) return;

    if (key === 'StartDate') {
      params[key] = startOfDay(new Date(value)).toISOString();
    } else if (key === 'EndDate') {
      params[key] = endOfDay(new Date(value)).toISOString();
    } else {
      params[key] = value;
    }
  });
}
```

### Common Mistakes

| ❌ WRONG | ✅ CORRECT |
|---------|-----------|
| `filters?.UserKey` | `filters?.filters?.UserKey` |
| `serviceConfig: UserServices.getAll()` | `getPaginatedOptions: getUserOptions` |
| `keyField` / `textField` | `valueField` / `labelField` |
| Missing `selectedOptionLabel` | Required for paginated selects |
| `startOfDay(filters.StartDate)` | `startOfDay(new Date(filters.filters.StartDate)).toISOString()` |
| `[context, toast]` in useCallback deps | `[context]` only |

---

**See Location 5.0 app** (`/Location/5.0/Resources/views/src/services.ts`) for complete service configuration examples.

---

## Next Steps

- [Events & Synchronizations](./09-events.md) - Events & Synchronization
