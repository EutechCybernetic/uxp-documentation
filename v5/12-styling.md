# Styling & Theming

UXP provides a theme system with CSS variables for styling your v5 apps.

---

## ⚠️ Important: Use Standard Components First

**Avoid custom styles as much as possible.** UXP provides a comprehensive set of pre-built components that handle styling, theming, and responsive behavior automatically.

**Before writing custom styles:**
1. Check if a standard UXP component exists for your use case (see [Step 7: Core Components](./07-core-components.md))
2. Use component props and variants for customization
3. Only add custom styles when absolutely necessary

**Benefits of using standard components:**
- ✅ Automatic theme support (light/dark mode)
- ✅ Consistent look and feel across apps
- ✅ Responsive and accessible by default
- ✅ Maintained and updated by the core team
- ✅ Less code to maintain

**When custom styles ARE appropriate:**
- App-specific layouts and containers
- Brand-specific elements unique to your app
- Minor tweaks to spacing/sizing for specific contexts

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

V5 apps use a simple, component-based SCSS structure:

```
src/
├── global.scss                              # Shared mixins, variables, utilities
├── index.tsx                                # Imports global.scss
├── views/
│   ├── portfolio/
│   │   ├── PortfolioView.tsx
│   │   └── PortfolioView.scss              # Component-specific styles
│   └── details/
│       ├── DetailsView.tsx
│       └── DetailsView.scss
└── components/
    ├── location-card/
    │   ├── LocationCard.tsx
    │   └── LocationCard.scss
    └── site-summary/
        ├── SiteSummary.tsx
        └── SiteSummary.scss
```

**Key Points:**
- **global.scss** - Shared mixins, variables, and utility classes used across components
- **Component SCSS** - Co-located with component files, imported directly
- **App Prefix** - Use your app prefix (e.g., `ilocapp_` for Location app) to avoid conflicts
- **BEM Naming** - Follow BEM convention: `prefix_component__element--modifier`

**Note:** CSS class names are automatically scoped at build time using scoped CSS — no manual prefixes needed to prevent conflicts. See [Step 18: Lint & Scoped CSS](./18-lint-and-scoped-css.md) for setup.

---

### global.scss

Define shared mixins, variables, and utilities in `src/global.scss`:

```scss
// src/global.scss

// Shared mixins
@mixin card-hover {
    transition: background-color 0.2s ease;
    &:hover {
        background-color: var(--secondaryBGColor);
    }
}

@mixin flex-center {
    display: flex;
    align-items: center;
    justify-content: center;
}

```

Import global.scss **once** in `src/index.tsx`:

```typescript
// src/index.tsx
import './global.scss';
import { enableLocalization } from './uxp';
import PortfolioView from './views/portfolio/PortfolioView';

registerUI({
    id: "portfolio-view",
    component: PortfolioView
});

enableLocalization();
```

---

### Component SCSS

Co-locate SCSS files with components and import directly:

```typescript
// src/views/portfolio/PortfolioView.tsx
import './PortfolioView.scss';
import { ObjectSearchComponent } from "uxp/components";

const PortfolioView = () => {
    return (
        <div className="ilocapp_portfolioview__container">
            <ObjectSearchComponent {...props} />
        </div>
    );
};

export default PortfolioView;
```

```scss
// src/views/portfolio/PortfolioView.scss

// Local mixin (only used in this component)
@mixin site-image($width, $height) {
    &__site-image-container {
        width: $width;
        height: $height;
        border-radius: 50%;
        border: 1px solid var(--borderColor);
        display: flex;
        align-items: center;
        justify-content: center;

        svg {
            width: 60%;
            height: 60%;
        }
    }

    &__site-image {
        width: 100%;
        height: 100%;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        border-radius: inherit;
    }
}

// Component styles with app prefix
.ilocapp_portfolioview {
    &__container {
        width: 100%;
        height: 100%;
        border: 1px solid var(--borderColor);
    }

    &__collapsed {
        width: 100%;
        height: auto;
        padding: 0.3rem;

        &__top {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        &__left {
            flex-grow: 1;
            min-width: 0;
        }

        &__right {
            width: 3rem;
            flex-shrink: 0;
        }

        @include site-image(2.5rem, 2.5rem);

        &__name {
            padding: 0.1rem 0.5rem;
        }

        &__code {
            display: flex;
            align-items: center;
            font-size: 0.9rem;
            color: var(--accentColor);
        }
    }

    &__locationname {
        display: flex;
        align-items: center;
        gap: 0.5rem;

        @include site-image(3rem, 3rem);
    }
}
```

---

### Naming Convention

Use BEM with your app prefix:

```scss
// Format: appprefix_component__element--modifier

.ilocapp_locationcard {                    // Block
    &__header {                             // Element
        &--highlighted {                    // Modifier
            background-color: var(--accentColor);
        }
    }

    &__body { }                             // Element
    &__footer { }                           // Element
}
```

**Choosing your prefix:**
- Use app name abbreviation
- Keep it short (4-8 characters)
- Examples: `ilocapp_` (Location), `iuserapp_` (User)

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
- ✅ Use CSS variables for **all** theme colors (backgrounds, text, borders, etc.)
- ✅ Define shared mixins/variables in `global.scss`
- ✅ Co-locate component SCSS with component files
- ✅ Use app prefix with BEM: `ilocapp_component__element`
- ✅ Import `global.scss` once in `index.tsx`
- ✅ Import component SCSS in each component file
- ✅ Use logical properties (margin-inline-start, text-align: start) for RTL support
- ✅ Use SCSS variables for non-theme values (spacing, border-radius, breakpoints)

**DON'T:**
- ❌ Hardcode colors - **always** use CSS variables
- ❌ Use inline styles for theming
- ❌ Override UXP core component styles directly
- ❌ Forget app prefix - prevents conflicts with other apps
- ❌ Import `global.scss` in multiple files - only once in `index.tsx`

---

**See Location 5.0 app** (`/Location/5.0/Resources/views/src/`) for complete styling examples and patterns.

---

## Next Steps

- [Step 13: Localization](./13-localization.md) - Multi-language support
- [Step 18: Lint & Scoped CSS](./18-lint-and-scoped-css.md) - Automatic style isolation and code quality tools
