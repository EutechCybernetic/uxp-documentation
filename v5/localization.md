# Localization

Add multi-language support to your v5 apps using UXP's localization system.

---

## Setup

### 1. Create localization.json

In your app's `Resources/views/` folder:

```json
{
    "ivivalocation.text.new-location": {
        "en": "New Location"
    },
    "ivivalocation.text.update-location": {
        "en": "Update Location"
    },
    "ivivalocation.text.delete-location": {
        "en": "Delete Location"
    },
    "ivivalocation.field.location-name": {
        "en": "Location Name"
    },
    "ivivalocation.field.location-type": {
        "en": "Location Type"
    },
    "ivivalocation.status.active": {
        "en": "Active",
        "ar-sa": "نشط"
    },
    "ivivalocation.status.inactive": {
        "en": "Inactive",
        "ar-sa": "غير نشط"
    },
    "ivivalocation.message.created": {
        "en": "Location created successfully"
    }
}
```

**Format:** Message key at top level → language codes → translations

### 2. Enable Localization

In your app's entry point (`src/index.tsx`):

```typescript
import { enableLocalization } from './uxp';

enableLocalization();
```

---

## Using Translations

Use the `$L()` function from UXPContext:

```typescript
import { useUXPContext } from "uxp/components";

const LocationList = () => {
    const uxpContext = useUXPContext();

    return (
        <div>
            <h1>{uxpContext.$L('ivivalocation.text.new-location')}</h1>
            <button>{uxpContext.$L('ivivalocation.text.delete-location')}</button>
        </div>
    );
};
```

---

## Parameters in Translations

Use `$` prefix for parameters:

```json
{
    "ivivalocation.message.welcome": {
        "en": "$userName welcome to $locationName"
    },
    "ivivalocation.message.count": {
        "en": "Showing $count of $total locations"
    }
}
```

Pass parameters as object:

```typescript
const welcome = uxpContext.$L('ivivalocation.message.welcome', {
    userName: "Jane Doe",
    locationName: "Building A"
});
// "Jane Doe welcome to Building A"

const count = uxpContext.$L('ivivalocation.message.count', {
    count: 10,
    total: 50
});
// "Showing 10 of 50 locations"
```

---

## Naming Conventions

Use hierarchical keys: `appname.category.message-id`

```json
{
    "ivivalocation.text.new-location": {
        "en": "New Location"
    },
    "ivivalocation.field.location-name": {
        "en": "Location Name"
    },
    "ivivalocation.action.add": {
        "en": "Add"
    },
    "ivivalocation.status.active": {
        "en": "Active"
    },
    "ivivalocation.message.success": {
        "en": "Success"
    }
}
```

**Categories:**
- `text.*` - General text labels
- `field.*` - Form field labels
- `action.*` - Button/action labels
- `status.*` - Status labels
- `message.*` - User messages

---

## RTL Support

UXP automatically handles RTL for Arabic, Hebrew, etc.:

```typescript
const MyComponent = () => {
    const uxpContext = useUXPContext();
    const direction = uxpContext.textDirection; // 'ltr' or 'rtl'

    return <div style={{ direction }}>{/* Content */}</div>;
};
```

Use logical CSS properties:

```scss
.header {
    margin-inline-start: 16px;  // Left in LTR, right in RTL
    text-align: start;           // Left in LTR, right in RTL
}
```

---

**See Location 5.0 app** (`/apps/iviva.dx/Location/5.0/Resources/views/localization.json`) for complete localization examples.

---

## Next Steps

- [Styling & Theming](./styling-theming.md) - Style your app
- [Core Components](./core-components.md) - UXP components with localization support
- [Building & Deployment](./building-deployment.md) - Deploy your localized app
