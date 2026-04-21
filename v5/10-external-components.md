# Using External Components

Use components from other apps (attachment uploader, activity log, etc.) using ComponentRenderer.

---

## ComponentRenderer

Dynamically load and render components from other apps.

### Basic Usage

```typescript
import { ComponentRenderer } from "uxp/components";

const LocationDetails = ({ locationKey }) => {
    return (
        <div>
            <h1>Location Details</h1>

            {/* Load activity log from System app */}
            <ComponentRenderer
                moduleId="iviva-system-app"
                componentId="activity-log"
                type="ui"
                additionalProps={{
                    objectType: 'Location',
                    objectKey: locationKey
                }}
            />
        </div>
    );
};
```

---

## Common External Components

### 1. Activity Log (Timeline)

```typescript
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="activity-log"
    type="ui"
    additionalProps={{
        objectType: 'Location',
        objectKey: locationKey
    }}
/>
```

### 2. Attachment Uploader

```typescript
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="attachment-uploader"
    type="ui"
    additionalProps={{
        objectType: 'Location',
        objectKey: locationKey,
        onUploadComplete: (attachments) => {
            console.log('Uploaded:', attachments);
        }
    }}
/>
```

### 3. Comments Component

```typescript
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="comments"
    type="ui"
    additionalProps={{
        objectType: 'Location',
        objectKey: locationKey
    }}
/>
```

---

## Finding External Components

To find available external components:

1. Check the app's module registration
2. Look for `registerUI()` calls
3. Note the `moduleId` and `componentId`

Example from System app:

```typescript
// System app registers
registerUI({
    id: "activity-log",
    moduleId: "iviva-system-app",
    UI: ActivityLogComponent
});
```

---

## Props Passing

Pass props using `additionalProps`:

```typescript
<ComponentRenderer
    moduleId="com.example.shared"
    componentId="user-picker"
    type="ui"
    additionalProps={{
        // These props are passed to the component
        multiple: true,
        userGroups: ['Managers'],
        onSelect: (users) => {
            console.log('Selected users:', users);
        }
    }}
/>
```

---

## Type: Widget vs UI

- **type="widget"** - For dashboard widgets (registered with `registerWidget()`)
- **type="ui"** - For UI components (registered with `registerUI()`)

```typescript
// For widgets
<ComponentRenderer
    moduleId="com.example.analytics"
    componentId="metrics-widget"
    type="widget"
/>

// For UI components
<ComponentRenderer
    moduleId="com.example.shared"
    componentId="user-picker"
    type="ui"
/>
```

---

## Loading States

ComponentRenderer handles loading automatically. Component will show loading state while scripts are loaded.

---

## Error Handling

If component not found, ComponentRenderer shows error message. Ensure:

1. moduleId is correct
2. componentId is correct
3. App is enabled in Lucy
4. Component is registered

---

## Example: Details Panel with External Components

```typescript
import { ObjectDetailsPanel, ComponentRenderer } from "uxp/components";

const LocationDetails = ({ locationKey }) => {
    return (
        <ObjectDetailsPanel
            data={getDetails}
            title={{
                title: (item) => item.LocationName
            }}
            additionlDetails={[
                {
                    id: 'attachments',
                    label: 'Attachments',
                    icon: 'fal paperclip',
                    content: (item) => (
                        <ComponentRenderer
                            moduleId="iviva-system-app"
                            componentId="attachment-uploader"
                            type="ui"
                            additionalProps={{
                                objectType: 'Location',
                                objectKey: item.LocationKey
                            }}
                        />
                    )
                },
                {
                    id: 'activity',
                    label: 'Activity Log',
                    icon: 'fal clock-rotate-left',
                    content: (item) => (
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
        />
    );
};
```

---

**See Location 5.0 app** (`/apps/iviva.dx/Location/5.0/Resources/views/src/`) for complete examples of using external components.

---

## Next Steps

- [Pluggable Views](./pluggable-views.md) - Make your app customizable
- [Events & Synchronization](./events-and-synchronization.md) - Keep views synchronized
- [Core Components](./core-components.md) - UXP components
