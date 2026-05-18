# Using External Components (System App Shared Components)

The System app (`iviva-system-app`) exposes a set of reusable UI components that any other app can embed via `ComponentRenderer`. No imports or build-time dependencies are required — the component is loaded at runtime from the System app's script bundle.

---

## How it works

```tsx
import { ComponentRenderer } from 'uxp/components';

<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="<component-id>"
    type={"ui" as any}
    additionalProps={{
        // component-specific props
    }}
/>
```

- `moduleId` is always `"iviva-system-app"` for System app components.
- `componentId` is the registered ID (listed for each component below).
- `type` must be `"ui"` (cast as `any` if TypeScript complains).
- All props are passed via `additionalProps`.

---

## Available Shared Components

| Component ID | Description |
|---|---|
| [`activity-log`](#1-activity-log) | Timeline of activity records for any object |
| [`attachment-uploader`](#2-attachment-uploader) | Upload documents/files and attach them to any object |
| [`object-documents`](#3-object-documents) | List, upload, and delete attachments for any object |
| [`object-image`](#4-object-image) | Upload/preview/remove a profile image via the Attachments system |
| [`profile-image-uploader`](#5-profile-image-uploader) | Upload/preview/remove a profile image via lightweight generic file upload |
| [`user-role-configurator`](#6-user-role-configurator) | Manage user roles for a given app |

---

## 1. Activity Log

**Component ID:** `activity-log`

Renders a timeline of activity records for any object. Fetches from the standard activity log service by default; accepts a custom service config for non-standard models.

### Example

```tsx
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="activity-log"
    type={"ui" as any}
    additionalProps={{
        objectType: 'Location.Location',
        objectKey: locationKey,
    }}
/>
```

### Props

| Prop | Type | Required | Default | Description |
|---|---|---|---|---|
| `objectType` | `string` | No | — | Object type e.g. `'Location.Location'` |
| `objectKey` | `string \| number` | No | — | Key of the object to show activity for |
| `service` | `ExecuteServiceConfig` | No | — | Override the default activity service with a custom one |
| `renderItem` | `(item: T) => JSX.Element` | No | — | Custom renderer for each activity item |

> **Note:** Either `objectType + objectKey` OR `service` must be provided.

---

## 2. Attachment Uploader

**Component ID:** `attachment-uploader`

Upload a file and attach it to any object. Stores metadata (description, keywords, file type) via the Attachments system. Suitable for documents, PDFs, spreadsheets, etc.

### Example

```tsx
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="attachment-uploader"
    type={"ui" as any}
    additionalProps={{
        objectKey: locationKey,
        objectType: 'Location.Location',
        afterUpload: (attachmentKey, error) => {
            if (!error) reload();
        },
    }}
/>
```

### Embedded mode (inside a panel)

```tsx
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="attachment-uploader"
    type={"ui" as any}
    additionalProps={{
        objectKey: locationKey,
        objectType: 'Location.Location',
        mode: 'embedded',
        hideTitle: true,
        showCancelButton: true,
        onCancel: () => setShowUploader(false),
        afterUpload: () => reload(),
    }}
/>
```

### Props

| Prop | Type | Required | Default | Description |
|---|---|---|---|---|
| `objectKey` | `string` | **Yes** | — | Key of the object to attach the file to |
| `objectType` | `string` | **Yes** | — | Object type e.g. `'Location.Location'` |
| `mode` | `'full' \| 'embedded'` | No | `'full'` | `full` — standalone form with padding/background. `embedded` — compact, no padding/background, for use inside panels |
| `title` | `string` | No | `'Upload a Document'` | Form title |
| `hideTitle` | `boolean` | No | `false` | Hide the form title |
| `attachmentType` | `string` | No | `'Document'` | Attachment type recorded in the DB |
| `maxFileSizeMB` | `number` | No | `2` | Maximum allowed file size in MB |
| `allowedFileTypes` | `string[]` | No | — | Restrict accepted file types e.g. `['.pdf', '.docx']` |
| `description` | `FieldConfig` | No | `{}` | Description field config — set `hide: true` to hide, `default` to pre-fill |
| `keywords` | `FieldConfig` | No | `{}` | Keywords field config |
| `fileType` | `FieldConfig` | No | `{}` | File type field config |
| `showIsPublic` | `boolean` | No | `false` | Show/hide the "Is Public" checkbox |
| `activityMessage` | `string` | No | `'Document has been uploaded'` | Activity log message recorded on upload |
| `uploadButtonText` | `string` | No | `'Upload'` | Upload button label |
| `uploadButtonIcon` | `string` | No | — | Upload button icon (FontAwesome class) |
| `showMaxFileSize` | `boolean` | No | — | Show max file size hint below the drop area |
| `showAllowedTypes` | `boolean` | No | — | Show allowed file types hint below the drop area |
| `showCancelButton` | `boolean` | No | — | Show a cancel button |
| `cancelButtonText` | `string` | No | `'Cancel'` | Cancel button label |
| `cancelButtonIcon` | `string` | No | — | Cancel button icon (FontAwesome class) |
| `afterUpload` | `(attachmentKey?: string, error?: string) => void` | No | — | Called after upload completes (success or failure) |
| `onCancel` | `() => void` | No | — | Called when cancel button is clicked |
| `className` | `string` | No | — | Extra CSS class on the root container |

#### FieldConfig

```typescript
interface FieldConfig {
    hide?: boolean;    // hide the field entirely
    default?: string;  // pre-fill value
}
```

---

## 3. Object Documents

**Component ID:** `object-documents`

Lists all attachments for an object with upload and delete controls. Wraps the Attachments system — shows a file list and an inline uploader.

### Example

```tsx
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="object-documents"
    type={"ui" as any}
    additionalProps={{
        objectKey: locationKey,
        objectType: 'Location.Location',
        eventName: 'location_documents_changed',
    }}
/>
```

Listen for changes:

```tsx
useEventSubscriber('location_ns', 'location_documents_changed', () => {
    reload();
});
```

### Props

| Prop | Type | Required | Default | Description |
|---|---|---|---|---|
| `objectKey` | `string` | **Yes** | — | Key of the object |
| `objectType` | `string` | **Yes** | — | Object type e.g. `'Location.Location'` |
| `eventName` | `string` | No | — | Event name fired after upload or delete. Payload: `{ objectKey, objectType }` |

---

## 4. Object Image

**Component ID:** `object-image`

Upload, preview, and remove a profile image for any object. Uses the **Attachments system** — stores an `AttachmentKey` (int) on the object. Use this for objects that already store `ProfileImageAttachmentKey`.

> **Choosing between `object-image` and `profile-image-uploader`:**
> - Use `object-image` for objects that store a `ProfileImageAttachmentKey` (int) — e.g. existing Asset/Location models.
> - Use `profile-image-uploader` for objects that store a `ProfileImageName` (text) — e.g. User, or new models with `has_image='true'`.

### Example

```tsx
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="object-image"
    type={"ui" as any}
    additionalProps={{
        objectKey: locationKey,
        objectType: 'Location.Location',
        objectKeyField: 'LocationKey',
        profileImageAttachmentKey: location?.ProfileImageAttachmentKey,
        eventName: 'location_image_changed',
    }}
/>
```

Listen for changes:

```tsx
useEventSubscriber('location_ns', 'location_image_changed', () => {
    reload();
});
```

### Props

| Prop | Type | Required | Default | Description |
|---|---|---|---|---|
| `objectKey` | `string` | **Yes** | — | Key of the object e.g. `'LOC001'` |
| `objectType` | `string` | **Yes** | — | Object type e.g. `'Location.Location'`. App and model names are derived from the two parts automatically |
| `objectKeyField` | `string` | **Yes** | — | Parameter name used in the remove service call e.g. `'LocationKey'` |
| `profileImageAttachmentKey` | `string` | No | — | Current attachment key stored on the object (`ProfileImageAttachmentKey`) |
| `app` | `string` | No | Derived from `objectType` | Override the app name part e.g. `'Location'` |
| `model` | `string` | No | Derived from `objectType` | Override the model name part e.g. `'Location'` |
| `activityMessage` | `string` | No | `'Image has been uploaded'` | Activity message recorded on upload |
| `eventName` | `string` | No | — | Event fired after upload or remove. Payload: `{ objectKey, objectType }` |
| `className` | `string` | No | — | Extra CSS class on the root container |
| `loading` | `boolean` | No | — | Show skeleton loader while parent data is loading |

---

## 5. Profile Image Uploader

**Component ID:** `profile-image-uploader`

Upload, preview, and remove a profile image for any object using **lightweight generic file upload** (`POST /uploadcontent/profilepics`). The server subscriber auto-writes `ProfileImageName` back to the object — no post-upload service call needed from the client.

> See [Object Image](#4-object-image) for the Attachments-based alternative.

### Requirements

1. **Model XML must have `has_image='true'`** — this activates the `System.UploadProfilePic` subscriber (writes `ProfileImageName`) and `System.ClearProfilePic` service (removes the image).
2. **Object must have a `ProfileImageName` (text) field.** Pass its current value as `currentImageName`. Display URL: `/AccountResources/profilepics/{ProfileImageName}`.

### Example — avatar mode (details page hero)

```tsx
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="profile-image-uploader"
    type={"ui" as any}
    additionalProps={{
        objectKey: userKey,
        objectType: 'User.User',
        currentImageName: user?.ProfileImageName,
        mode: 'avatar',
        avatarSize: 'lg',
        displayName: user?.FullName,
        eventName: 'user_profile_image_changed',
        activityMessage: 'Profile image has been uploaded',
    }}
/>
```

Listen for changes:

```tsx
useEventSubscriber('user_ns', 'user_profile_image_changed', () => {
    reloadUser();
});
```

### Example — sidebar mode (rectangular drag-drop area)

```tsx
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="profile-image-uploader"
    type={"ui" as any}
    additionalProps={{
        objectKey: assetKey,
        objectType: 'Asset.Asset',
        currentImageName: asset?.ProfileImageName,
        mode: 'sidebar',
        eventName: 'asset_profile_image_changed',
    }}
/>
```

### Props

| Prop | Type | Required | Default | Description |
|---|---|---|---|---|
| `objectKey` | `string` | **Yes** | — | Key of the object e.g. `'USER001'` |
| `objectType` | `string` | **Yes** | — | Object type e.g. `'User.User'`. Model must have `has_image='true'` in XML |
| `currentImageName` | `string` | No | — | Current `ProfileImageName` value from the object. Display URL is `/AccountResources/profilepics/{currentImageName}` |
| `mode` | `'sidebar' \| 'avatar'` | No | `'sidebar'` | `sidebar` — rectangular drag-drop upload area. `avatar` — circular avatar with camera/trash overlay on hover |
| `avatarSize` | `'sm' \| 'md' \| 'lg'` | No | `'lg'` | Avatar size when `mode='avatar'`. `sm`=2.5rem, `md`=4.5rem, `lg`=7.5rem |
| `displayName` | `string` | No | — | Full name used to derive initials in avatar mode. Falls back to `placeholderIcon` if omitted |
| `placeholderIcon` | `string` | No | `'fal fa-user'` | FontAwesome class shown when no image and no `displayName` (avatar mode only) |
| `activityMessage` | `string` | No | `'Profile image has been uploaded'` | Activity message recorded on upload |
| `eventName` | `string` | No | — | Event fired after upload or remove. Payload: `{ objectKey, objectType }` |
| `maxFileSizeMB` | `number` | No | `uxpContext.maxFileUploadSize` or `5` | Maximum allowed image size in MB |
| `className` | `string` | No | — | Extra CSS class on the root container |
| `loading` | `boolean` | No | — | Show skeleton loader while parent data is loading |

---

## 6. User Role Configurator

**Component ID:** `user-role-configurator`

Manage user roles for a given application. Renders a tabbed UI for viewing and editing roles.

### Example

```tsx
<ComponentRenderer
    moduleId="iviva-system-app"
    componentId="user-role-configurator"
    type={"ui" as any}
    additionalProps={{
        app: 'Location',
    }}
/>
```

### Props

| Prop | Type | Required | Default | Description |
|---|---|---|---|---|
| `app` | `string` | **Yes** | — | App name whose roles to manage e.g. `'Location'`, `'Asset'` |

---

## Full Example: Details Panel with Multiple System Components

```tsx
import { ComponentRenderer } from 'uxp/components';
import { useEventSubscriber } from 'uxp/components';

const LocationDetails = ({ locationKey, location, reload }) => {
    // Refresh when profile image or documents change
    useEventSubscriber('loc_ns', 'location_image_changed', reload);
    useEventSubscriber('loc_ns', 'location_docs_changed', reload);

    return (
        <div className="details-layout">
            {/* Profile image in hero */}
            <ComponentRenderer
                moduleId="iviva-system-app"
                componentId="object-image"
                type={"ui" as any}
                additionalProps={{
                    objectKey: locationKey,
                    objectType: 'Location.Location',
                    objectKeyField: 'LocationKey',
                    profileImageAttachmentKey: location?.ProfileImageAttachmentKey,
                    eventName: 'location_image_changed',
                }}
            />

            {/* Activity log */}
            <ComponentRenderer
                moduleId="iviva-system-app"
                componentId="activity-log"
                type={"ui" as any}
                additionalProps={{
                    objectType: 'Location.Location',
                    objectKey: locationKey,
                }}
            />

            {/* Documents */}
            <ComponentRenderer
                moduleId="iviva-system-app"
                componentId="object-documents"
                type={"ui" as any}
                additionalProps={{
                    objectKey: locationKey,
                    objectType: 'Location.Location',
                    eventName: 'location_docs_changed',
                }}
            />
        </div>
    );
};
```

---

## Next Steps

- [Pluggable Views](./11-pluggable-views.md) — Make your app customizable
- [Events & Synchronization](./09-events.md) — Keep views in sync after mutations
- [Core Components](./07-core-components.md) — UXP built-in components
