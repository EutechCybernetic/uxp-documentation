# Styling & Theming

UXP provides a theme system with CSS variables for styling your v5 apps.

---

## Theme System

Access the current theme in your components:

```typescript
import { useUXPContext } from "uxp/components";

const MyComponent = () => {
    const uxpContext = useUXPContext();
    const theme = uxpContext.theme;

    return (
        <div style={{
            backgroundColor: theme.backgroundColor,
            color: theme.primaryTextColor
        }}>
            Content
        </div>
    );
};
```

---

## CSS Variables

Use CSS variables in your stylesheets for automatic theme support:

```scss
.my-component {
    // Background colors
    background-color: var(--primaryBGColor);
    background-color: var(--secondaryBGColor);

    // Text colors
    color: var(--primaryTextColor);
    color: var(--secondaryTextColor);

    // UI
    border: 1px solid: var(--borderColor);

    // Buttons
    .primary-btn {
        background-color: var(--primaryButtonBGColor);
        color: var(--primaryButtonTextColor);

        &:active {
            background-color: var(--primaryButtonActiveBGColor);
            color: var(--primaryButtonActiveTextColor);
        }
    }

    // Toast notifications
    &.success { background-color: var(--toastSuccessBGColor); }
    &.error { background-color: var(--toastErrorBGColor); }
    &.warning { background-color: var(--toastWarningBGColor); }
}
```

### Available Theme Variables

```scss
// Portal
--portalBGColor
--portalSidebarBGColor
--portalSidebarTextColor
--portalHeaderBGColor

// Backgrounds
--primaryBGColor
--secondaryBGColor
--secondaryRowColor

// Text
--primaryTextColor
--secondaryTextColor

// UI
--borderColor
--boxShadowColor

// Buttons
--primaryButtonBGColor
--primaryButtonTextColor
--primaryButtonActiveBGColor
--primaryButtonActiveTextColor
--secondaryButtonBGColor
--secondaryButtonTextColor
--secondaryButtonActiveBGColor
--secondaryButtonActiveTextColor

// Toast Notifications
--toastSuccessBGColor
--toastSuccessTextColor
--toastErrorBGColor
--toastErrorTextColor
--toastWarningBGColor
--toastWarningTextColor
--toastInfoBGColor
--toastInfoTextColor

// Status
--pendingStatusColor
--onGoingStatusColor
--completedStatusColor
--approvedStatusColor
--rejectedStatusColor
--onHoldStatusColor
--parkedStatusColor

// Priority
--lowPriorityColor
--mediumPriorityColor
--highPriorityColor
--urgentPriorityColor

// Charts
--chartColor1 through --chartColor15
```

---

## SCSS Organization

Structure your styles like this:

```
src/
├── styles/
│   ├── _variables.scss      # Spacing, fonts, breakpoints
│   ├── _mixins.scss          # Reusable patterns
│   ├── components/
│   │   ├── _location-card.scss
│   │   └── _location-form.scss
│   └── main.scss             # Import everything
```

### Example Component Style

```scss
// _location-card.scss
@use '../variables' as *;

.location-card {
    background-color: var(--primaryBGColor);
    border: 1px solid var(--borderColor);
    border-radius: 8px;
    padding: 16px;
    cursor: pointer;

    &:hover {
        background-color: var(--secondaryBGColor);
    }

    &__title {
        font-size: 18px;
        font-weight: bold;
        color: var(--primaryTextColor);
        margin-bottom: 8px;
    }

    &__content {
        color: var(--secondaryTextColor);
        font-size: 14px;
    }
}
```

---

## Responsive Design

Use breakpoints for responsive layouts:

```scss
// _variables.scss
$breakpoint-mobile: 768px;
$breakpoint-tablet: 1024px;

// Component
.location-grid {
    display: grid;
    grid-template-columns: 1fr;
    gap: 16px;

    // Tablet: 2 columns
    @media (min-width: $breakpoint-mobile) {
        grid-template-columns: repeat(2, 1fr);
    }

    // Desktop: 3 columns
    @media (min-width: $breakpoint-tablet) {
        grid-template-columns: repeat(3, 1fr);
    }
}
```

---

## RTL Support

Use logical CSS properties for RTL support:

```scss
.header {
    // Instead of margin-left
    margin-inline-start: 16px;

    // Instead of text-align: left
    text-align: start;
}
```

---

## Quick Tips

**DO:**
- ✅ Use CSS variables for theme colors
- ✅ Use SCSS variables for spacing, sizes, breakpoints
- ✅ Follow BEM naming: `.location-card__title`
- ✅ Use logical properties for RTL support

**DON'T:**
- ❌ Hardcode colors - use CSS variables
- ❌ Use inline styles for theming
- ❌ Override UXP component styles directly

---

**See Location 5.0 app** (`/apps/iviva.dx/Location/5.0/Resources/views/src/`) for complete styling examples and patterns.

---

## Next Steps

- [Localization](./localization.md) - Multi-language support
- [Building & Deployment](./building-deployment.md) - Deploy your app
- [Core Components](./core-components.md) - UXP components with built-in styling
