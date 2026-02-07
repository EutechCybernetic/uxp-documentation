# Events & Synchronization

Keep views synchronized when data changes using EventBus and SignalR.

---

## Overview

Two communication systems:

- **EventBus** - In-browser event communication between components
- **SignalR** - Real-time updates from Lucy server

---

## EventBus

Subscribe to and publish events within your app.

### Basic Usage

```typescript
import { useEventSubscriber } from "uxp/components";

const LocationList = () => {
    const refreshList = () => {
        // Refresh the list
    };

    // Subscribe to event
    useEventSubscriber('location:refresh', refreshList);

    return <div>...</div>;
};
```

### Publishing Events

```typescript
import { eventDispatcher, generateUUID } from "uxp/components";

const LocationForm = () => {
    const handleSave = async (formData) => {
        // Save location...

        // Notify other components
        eventDispatcher(generateUUID(), 'location:refresh');
        eventDispatcher(generateUUID(), 'location:created', { locationKey: result.Key });
    };

    return <div>...</div>;
};
```

### With Data

```typescript
// Publish with data
eventDispatcher(generateUUID(), 'location:updated', {
    locationKey: 'LOC-123',
    changes: { LocationName: 'New Name' }
});

// Subscribe with data
useEventSubscriber('location:updated', (data) => {
    console.log('Location updated:', data.locationKey);
    console.log('Changes:', data.changes);
});
```

---

## SignalR Real-Time Updates

Receive real-time updates from Lucy server.

### Basic Usage

```typescript
import { useMessageBus } from "uxp/components";

const LocationList = () => {
    const objectSearchRef = useRef();

    // Subscribe to SignalR events
    useMessageBus('location-created', (message) => {
        console.log('New location created:', message);
        objectSearchRef.current?.refreshCurrentPage();
    });

    useMessageBus('location-updated', (message) => {
        console.log('Location updated:', message);
        objectSearchRef.current?.refreshCurrentPage();
    });

    return <ObjectSearchComponent ref={objectSearchRef} {...props} />;
};
```

**Note:** SignalR messages are published from Lucy server services. Frontend components can only subscribe to these messages, not publish them.

---

## Common Patterns

### Pattern 1: Form → List Synchronization

```typescript
import { eventDispatcher, generateUUID } from "uxp/components";

// LocationForm.tsx
const handleSave = async (formData) => {
    const { data, error } = await createLocation(uxpContext, formData, isPrimary);

    if (!error) {
        // Notify list to refresh
        eventDispatcher(generateUUID(), 'location:refresh');
        onClose();
    }
};

// LocationList.tsx
const LocationList = () => {
    const objectSearchRef = useRef();

    useEventSubscriber('location:refresh', () => {
        objectSearchRef.current?.refreshCurrentPage();
    });

    return <ObjectSearchComponent ref={objectSearchRef} {...props} />;
};
```

### Pattern 2: Details → List Synchronization

```typescript
import { eventDispatcher, generateUUID } from "uxp/components";

// LocationDetails.tsx
const handleUpdate = async (formData) => {
    const { data, error } = await updateLocation(uxpContext, editInstance, formData);

    if (!error) {
        eventDispatcher(generateUUID(), 'location:updated', { locationKey });
    }
};

// LocationList.tsx
useEventSubscriber('location:updated', (data) => {
    // Refresh the specific row or entire list
    objectSearchRef.current?.refreshCurrentPage();
});
```

### Pattern 3: Cross-View Updates

```typescript
import { eventDispatcher, generateUUID } from "uxp/components";

// Any component can publish
eventDispatcher(generateUUID(), 'location:status-changed', {
    locationKey: 'LOC-123',
    status: 'Active'
});

// Multiple views can subscribe
useEventSubscriber('location:status-changed', (data) => {
    // Update UI accordingly
    refreshData();
});
```

---

## Event Naming Conventions

Use hierarchical naming:

```typescript
// Good
'location:created'
'location:updated'
'location:deleted'
'location:status-changed'

'user:logged-in'
'user:logged-out'

// Avoid
'locationCreated'
'updated'
'refresh'
```

---

## Real-Time Dashboard Example

```typescript
const Dashboard = () => {
    const [metrics, setMetrics] = useState({});

    // Real-time metric updates from server
    useMessageBus('metrics-updated', (message) => {
        setMetrics(prev => ({
            ...prev,
            [message.metricKey]: message.value
        }));
    });

    // Browser events from other components
    useEventSubscriber('dashboard:refresh', () => {
        loadMetrics();
    });

    return <div>{/* Dashboard content */}</div>;
};
```

---

## Cleanup

Subscriptions auto-cleanup when component unmounts. No manual cleanup needed:

```typescript
// Auto-cleanup on unmount
useEventSubscriber('location:refresh', handleRefresh);
useMessageBus('location-created', handleCreated);
```

---

**See Location 5.0 app** (`/apps/iviva.dx/Location/5.0/Resources/views/src/`) for complete event synchronization examples.

---

## Next Steps

- [Using External Components](./using-external-components.md) - Use components from other apps
- [Pluggable Views](./pluggable-views.md) - Make your app customizable
- [Core Components](./core-components.md) - UXP components
