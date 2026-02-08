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

**Note:** SignalR messages are published from Lucy. Frontend components can only subscribe to these messages, not publish them.

---

## Cleanup

Subscriptions auto-cleanup when component unmounts. No manual cleanup needed:

```typescript
// Auto-cleanup on unmount
useEventSubscriber('location:refresh', handleRefresh);
useMessageBus('location-created', handleCreated);
```
---

**See Location 5.0 app** (`/Location/5.0/Resources/views/src/`) for complete event synchronization examples.

---

## Next Steps

- [Using External Components](./10-external-components.md) - Use components from other apps
