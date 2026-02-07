# Data Fetching in UXP v5

New hooks and functions for executing API requests with centralized service configurations.

---

## Why Use This Pattern?

Instead of writing this in every component:
```typescript
const [loading, setLoading] = useState(false);
const [data, setData] = useState([]);
const [error, setError] = useState(null);
// ... manual API calls and state management
```

You write this:
```typescript
const { loading, data, error } = useExecuteRequest(LocationServices.getAll());
```

**Benefits:**
- **DRY:** Define API calls once, use everywhere
- **Type-safe:** Full TypeScript support with generics
- **Auto state management:** Loading, data, error handled automatically
- **Built-in features:** Debouncing, polling, caching, data transformation
- **Centralized:** All API definitions in one place
- **Testable:** Easy to mock service configurations

---

## Creating Service Configurations

Create a `services.ts` file to define all your API calls:

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
  }),

  getDetails: (key: string): ExecuteServiceConfig => ({
    type: 'service',
    app: 'Location',
    service: 'Location:Details',
    parameters: { key },
    options: { json: true },
    extractData: [0],           // Extract first item
    defaultValue: null
  }),

  create: (location): ExecuteServiceConfig => ({
    type: 'service',
    app: 'Location',
    service: 'Location:Create',
    parameters: location,
    options: { json: true }
  })
};

export const StaticDataServices = {
  getTimeZones: (): ExecuteServiceConfig => ({
    type: 'service',
    app: 'System',
    service: 'GetStaticDataFromApp',
    parameters: { app: 'System', key: 'Timezones' },
    options: { json: true },
    defaultValue: [],
    transformData: (data) => toJSON(data, [])  // Parse JSON
  })
};
```

### Configuration Types

| Type | Use For | Example |
|------|---------|---------|
| `service` | Lucy services | `app: 'Location', service: 'Location:GetAll'` |
| `action` | Lucy model actions | `model: 'Location', action: 'GetAll'` |
| `microservice` | Microservice calls | `serviceName: 'analytics', route: '/metrics'` |
| `api` | Direct HTTP calls | `url: 'https://api.example.com/data'` |
| `query` | Lucy queries | `query: 'SELECT * FROM Locations'` |
| `collection` | Lucy collections | `model: 'Location', collection: 'All'` |

### Key Configuration Options

**`defaultValue`** - Fallback when data is null or on error
```typescript
defaultValue: []      // For arrays
defaultValue: null    // For single objects
defaultValue: 0       // For numbers
```

**`extractData`** - Extract specific data from response
```typescript
extractData: 'locations'              // response.locations
extractData: [0]                      // response[0]
extractData: [0, 'items']             // response[0].items
extractData: 'result.data'            // response.result.data
extractData: (data) => data?.result   // Custom function
```

**`transformData`** - Transform data after extraction
```typescript
transformData: (data) => toJSON(data, [])
transformData: (data) => data.map(item => ({ ...item, parsed: toJSON(item.config, {}) }))
```

---

## Three Ways to Execute Configs

### 1. useExecuteRequest Hook
**Use when:** Component needs loading/data/error state

```typescript
// Auto-execute on mount
const { loading, data, error } = useExecuteRequest(
  LocationServices.getAll()
);

// Execute when dependency changes
const { loading, data } = useExecuteRequest(
  LocationServices.getDetails(locationKey),
  { dependencies: [locationKey] }
);

// Manual execution with state updates
const { loading, execute } = useExecuteRequest(
  LocationServices.create({}),
  { autoExecute: false }
);
await execute(formData, true);  // true = update state

// Debouncing for search
const { data } = useExecuteRequest(
  LocationServices.getAll({ q: searchQuery }),
  { dependencies: [searchQuery], debounce: 500 }
);

// Polling
const { data } = useExecuteRequest(
  MetricsServices.getCurrent(),
  { polling: 5000 }  // Refresh every 5s
);
```

### 2. executeConfig Function
**Use when:** Callbacks, event handlers, no state management needed

```typescript
import { executeConfig, useUXPContext } from 'uxp/components';

const context = useUXPContext();

// In ObjectSearchComponent callback
const getAll = async (page, pageSize, query, filters) => {
  const { data, error } = await executeConfig(
    context,
    LocationServices.getAll({ page, pageSize, q: query, ...filters })
  );

  if (error) {
    console.error('Failed:', error);
    return { items: [] };
  }

  return { items: data || [] };
};

// In event handler
const handleDelete = async (key) => {
  const result = await executeConfig(
    context,
    LocationServices.delete(key)
  );

  if (result.error) {
    toast.error(result.errorMessage);
    return;
  }

  toast.success('Deleted successfully!');
};
```

### 3. useExecuteRequestCallback Hook
**Use when:** Need stable callback function with dynamic parameters

```typescript
// For autocomplete/search components
const searchLocations = useExecuteRequestCallback(
  LocationServices.getAll({ page: 1, pageSize: 50 })
);

const handleSearch = async (query) => {
  const { data, error } = await searchLocations({ q: query });
  return data || [];
};

// For processing with custom logic
const loadStats = useExecuteRequestCallback(
  LocationTypeServices.getAllWithCounts()
);

const processStats = useCallback(async () => {
  setLoading(true);
  const { data: stats } = await loadStats();
  // Process stats...
  setLoading(false);
}, []);
```

---

## Quick Reference

| Tool | Returns | State Updates | Use Case |
|------|---------|---------------|----------|
| `useExecuteRequest` | `{ loading, data, error, execute, refresh, reset }` | ✅ Automatic | Component data loading |
| `executeConfig` | `Promise<{ data, error, errorMessage }>` | ❌ None | Callbacks, event handlers |
| `useExecuteRequestCallback` | `(params) => Promise<{ data, error }>` | ❌ None | Stable callbacks with dynamic params |

### When to Use What

```typescript
// ✅ Component data loading
const { loading, data } = useExecuteRequest(LocationServices.getAll());

// ✅ ObjectSearchComponent callback
const getData = async (page, size) => {
  const { data } = await executeConfig(context, LocationServices.getAll({ page, size }));
  return { items: data };
};

// ✅ Search/autocomplete with dynamic params
const search = useExecuteRequestCallback(LocationServices.search());
const results = await search({ q: 'query' });
```

---

## Override at Runtime

Override service-level configs when needed:

```typescript
const { data } = useExecuteRequest(
  LocationServices.getAll(),
  {
    extractData: 'customPath',           // Override extractData
    transformData: (d) => customFormat(d), // Override transformData
    defaultValue: []                      // Override defaultValue
  }
);

// Same for executeConfig
const { data } = await executeConfig(
  context,
  LocationServices.getAll(),
  { extractData: 'custom', transformData: formatter }
);
```

---

## Complete Example

```typescript
import { useExecuteRequest, executeConfig, useUXPContext } from 'uxp/components';
import { LocationServices } from './services';

function LocationManager() {
  const context = useUXPContext();

  // Auto-load on mount
  const { loading, data: locations, refresh } = useExecuteRequest(
    LocationServices.getAll()
  );

  // Manual execution
  const { execute: createLocation } = useExecuteRequest(
    LocationServices.create({}),
    { autoExecute: false }
  );

  // Create handler
  const handleCreate = async (formData) => {
    const result = await createLocation(formData, true);
    if (!result.error) {
      toast.success('Created!');
      refresh(true);
    }
  };

  // Delete handler
  const handleDelete = async (key) => {
    const result = await executeConfig(context, LocationServices.delete(key));
    if (!result.error) {
      toast.success('Deleted!');
      refresh(true);
    }
  };

  if (loading) return <div>Loading...</div>;

  return (
    <div>
      {locations?.map(loc => (
        <div key={loc.LocationKey}>
          {loc.LocationName}
          <button onClick={() => handleDelete(loc.LocationKey)}>Delete</button>
        </div>
      ))}
    </div>
  );
}
```

---

That's it! Define your services once, use them everywhere with type safety and automatic state management. 🚀
