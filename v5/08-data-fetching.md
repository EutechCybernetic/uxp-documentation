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
import { executeConfig, useUXPContext } from 'uxp/components';

const context = useUXPContext();

// ObjectSearchComponent callback
const getAll = async (page, pageSize, query, filters) => {
  const { data, error } = await executeConfig(
    context,
    LocationServices.getAll({ page, pageSize, q: query, ...filters })
  );

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

**See Location 5.0 app** (`/Location/5.0/Resources/views/src/services.ts`) for complete service configuration examples.

---

## Next Steps

- [Events & Synchronizations](./09-events.md) - Events & Synchronization
