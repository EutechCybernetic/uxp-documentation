# V4 to V5 Migration Guide

Complete step-by-step guide for migrating iviva v4 XML-based views to v5 React components.

**Target Audience:** Developers and AI assistants performing autonomous migrations.

---

## Overview

This guide walks through the complete process of analyzing a v4 app and migrating it to v5, using the Location app as a reference example. After following this guide, you should be able to convert any v4 view to v5 without assistance.

**Prerequisites:**
- [Migration Setup](./migration-setup.md) - Project initialization
- [Core Components Reference](./core-components.md) - Component documentation
- [Data Fetching](./data-fetching.md) - Service patterns

**Reference Implementation:** `/Location/5.0/Resources/views/` - Complete working v5 Location app

---

## Step 1: Analyze V4 App Structure

### 1.1 Locate V4 Files

V4 apps have this structure:
```
/apps/YourApp/5.0/
 Views/                      # Standard XML views (forms, details pages)
 ViewTemplates/              # Template-based views (lists, configs)
 Models/                     # Data models
 Services.xml                # Service definitions
 Configuration.xml           # App configuration
```

### 1.2 Identify View Types

**ViewTemplates (most common):**

| Template Type | File Pattern | Purpose | V5 Component |
|--------------|--------------|---------|--------------|
| `template='search-cell'` | `search_*.xml`, `alllocations.xml` | List/search pages | `ObjectSearchComponent` |
| `template='config'` | `locationtypes.xml`, `holidays.xml` | Simple CRUD configs | `SimpleConfigurationTable` or `ObjectSearchComponent` |

**Standard Views:**

| View Pattern | File Name Pattern | Purpose | V5 Component |
|--------------|-------------------|---------|--------------|
| `layout="standard"` with tabs | `view.xml`, `edit.xml` | Object details | `ObjectDetailsPanel` |
| `<GroupEditor>` forms | `*.partial.xml` | Create/edit forms | `SlideInForm` + `DataEntryForm` |
| Multiple settings tabs | `appconfiguration.xml` | Settings page | `ConfigurationView` |

### 1.3 Check for Reusable System Components

Before building custom views, check if System app has the component:

| Functionality | System Component | Usage |
|--------------|------------------|-------|
| Document uploads | `System AttachmentUploader` | Use `ComponentRenderer` |
| User role configuration | `System UserRole` | Use `ComponentRenderer` |
| Activity logs | `System ActivityLog` | Use `ComponentRenderer` |

---

## Step 2: Create App-Wide View Mapping

Analyze ALL views and create a mapping table before starting migration.

### 2.1 Location App Example Mapping

| V4 File | Type | Purpose | V5 Page | V5 Component(s) | Route |
|---------|------|---------|---------|-----------------|-------|
| `dashboard.xml` | View | Dashboard | `DashboardView` | `EmbeddedDashboard` | `/dashboard` (navigation) |
| `search_location.xml` | ViewTemplate | Location list | `PortfolioView` | `ObjectSearchComponent` | `/portfolios` (navigation) |
| `view.xml` | View | Location details | `DetailsView` | `ObjectDetailsPanel` | `/details/:locationKey` (other route) |
| `locationtypes.xml` | ViewTemplate (config) | Location types config | `SettingsView` | `SimpleConfigurationTable` | `/settings` (navigation) section |
| `globalholidays.xml` | ViewTemplate (config) | Holidays config | `HolidayView` | `ObjectSearchComponent` | `/holidays` (navigation) |
| `locationworkinghours.xml` | ViewTemplate | Working hours list | `SettingsView` | `ObjectSearchComponent` | `/settings` section |
| `createlocation.*.xml` | View (form) | Create location form | `LocationForm` component | `SlideInForm` + `DataEntryForm` | Triggered by "Add" button |
| `uploadprofileimage.*.xml` | View | Image upload | System component | `ComponentRenderer`  System | Reuse System component |

### 2.2 Categorization

**Navigation Pages** (sidebar links):
- Dashboard
- Portfolios (main list)
- Holidays
- Reports
- Documents
- Settings

**Other Routes** (no sidebar, accessed via URL):
- Location details (`/details/:locationKey`)
- Layout view (`/layout/:layoutKey`)

**Settings Sections** (inside ConfigurationView):
- General Configuration
- Location Types
- Layout Markers
- Working Hours & Exceptions

**Forms** (opened via buttons, not routes):
- Location Form (Create/Edit)
- Holiday Form (Create/Edit)
- Working Hours Form (Create/Edit)

---

## Step 3: Setup Configuration

### 3.1 Create Basic Configuration File

Start by creating `Configuration.yml` in your app root with **metadata only** and **empty arrays**:

**File:** `<YourApp>/5.0/Configuration.yml` (app root, NOT in Resources/views/)

```yaml
# App Metadata
appId: Location                                    # App identifier (used in services, events, etc.)
bundleId: iviva-location-app                       # NPM package name
bundleJsonPath: /Resources/views/bundle.json       # Path to bundle.json (generated during build)
scripts:
  - "/Resources/views/dist/main.js"                # JavaScript files to load

# Base route for all app URLs
baseRoute: /location                               # All routes will be under /location/*

# Navigation and Routes (will be filled as we build views)
navigationLinks: []                                # Sidebar navigation links
otherRoutes: {}                                    # Routes without sidebar links
```

**What each field means:**

| Field | Purpose | Example |
|-------|---------|---------|
| `appId` | App identifier used in service calls, events, models | `Location`, `User`, `Asset` |
| `bundleId` | NPM package name for the app | `iviva-location-app` |
| `bundleJsonPath` | Path to bundle.json (generated by webpack) | `/Resources/views/bundle.json` |
| `scripts` | JavaScript files to load when app initializes | `/Resources/views/dist/main.js` |
| `baseRoute` | Base URL path - all app routes are under this | `/location` → routes like `/location/portfolios` |
| `navigationLinks` | Array of sidebar navigation links | Added incrementally as we build views |
| `otherRoutes` | Routes that don't appear in sidebar | Added when needed (details pages, redirects) |

**Why start with empty arrays?**

We'll add navigation links and routes **incrementally** as we build each view. This helps you understand exactly when and why to add each configuration.

---

### 3.2 Understanding Configuration Structure

#### navigationLinks Structure

Navigation links appear in the **sidebar**. Each link has:

```yaml
navigationLinks:
  - label: "Portfolios"              # Display name in sidebar
    icon: "fas list"                 # FontAwesome icon
    link: /portfolios                # URL path (relative to baseRoute)
    pageId: ui/portfolio-view        # Registered component ID

    # Optional fields:
    appRoles: ["admin"]              # Required app roles
    userGroups: ["managers"]         # Required user groups
    children: []                     # Nested navigation items
```

**When to use:** For views that should appear in the sidebar (main app sections).

#### otherRoutes Structure

Other routes are **URL-accessible but not in sidebar**. Each route has:

```yaml
otherRoutes:
  "/details/:locationKey":           # Route pattern with parameters
    pageId: ui/details-view          # Registered component ID
    title: "Location Details"        # Page title
    appRoles: ["admin"]              # Optional: required roles

  "/":                               # Root redirect
    redirectTo: "/portfolios"        # Redirect destination
```

**When to use:**
- Details pages (e.g., `/details/:key`)
- Routes with parameters that don't belong in sidebar
- Redirects (e.g., `/` → `/dashboard`)

---

**Next:** We'll add to this configuration as we build views. The configuration will grow with your app!

---

### 3.3 Permissions & Access Control

Both `navigationLinks` and `otherRoutes` support role-based access control using two permission arrays.

#### Understanding userGroups and appRoles

**Structure:**
```yaml
navigationLinks:
  - label: "Portfolios"
    link: /portfolios
    pageId: ui/portfolio-view
    userGroups: []       # User group keys (usually empty)
    appRoles: []         # App-specific roles
```

#### userGroups (System User Groups)

- **What:** User group keys from the system
- **Format:** Array of strings (e.g., `["managers", "engineers"]`)
- **Usually:** Left empty `[]`
- **When to use:** Only if you need system-wide user group restrictions
- **Configured:** Via Config UI (NOT in YAML)

**Example:**
```yaml
- label: "Engineering Dashboard"
  link: /engineering
  pageId: ui/engineering-view
  userGroups: ["engineers"]        # Only engineers group
  appRoles: []
```

#### appRoles (App-Specific Roles)

- **What:** Application-specific roles for this app
- **Format:** `["AppName:rolename"]` (lowercase, colon-separated)
- **Example:** `["Location:admin", "Location:editor"]`
- **Shortcut:** Can use just `["admin"]` (assumes current app)
- **Configured:** Directly in Configuration.yml arrays

**Example:**
```yaml
- label: "Settings"
  link: /settings
  pageId: ui/settings-view
  userGroups: []
  appRoles: ["Location:admin"]    # Only Location admins
```

#### How to Extract appRoles from v4

In v4 app, look in **`Configuration.xml`** for role checks:

```xml
<!-- v4 Configuration.xml -->
<Link view='viewactivities' visible='#{authrole.cansearchobjectactivity?}'/>
<Link view="userroles" visible='#{authrole.canmanageuserroles?}'/>
```

**Pattern:** `visible='#{authrole.ROLENAME?}'` → Extract the `ROLENAME` part

**Conversion:**
```
v4: visible='#{authrole.cansearchobjectactivity?}'
                        ↓
v5: appRoles: ["AuditTrail:cansearchobjectactivity"]
```

#### How isUserAllowed Validates Permissions

From `uxp/src/utils.ts` (the actual function used):

```typescript
export function isUserAllowed(context, userGroups = [], appRoles = []): boolean {
    // Both empty = everyone can access
    if (userGroups.length === 0 && appRoles.length === 0) return true;

    // Check if user's group matches
    if (userGroups.includes(context?.userDetails?.UserGroupKey)) return true;

    // Check if user has any of the app roles
    return appRoles.some(ar => {
        const [app, role] = ar.split(":", 2);  // Splits "AuditTrail:cansearch"
        return context.hasAppRole(app, role);   // Checks if user has this role
    });
}
```

**Logic:**
1. If **both** `userGroups` and `appRoles` are empty → **Allow** (no restrictions)
2. If user's group is in `userGroups` → **Allow**
3. If user has any role in `appRoles` → **Allow**
4. Otherwise → **Deny**

#### Common Patterns

**No restrictions (public route):**
```yaml
- label: "Portfolios"
  link: /portfolios
  pageId: ui/portfolio-view
  userGroups: []       # Empty = no restrictions
  appRoles: []         # Empty = no restrictions
```

**Admin-only route:**
```yaml
- label: "Settings"
  link: /settings
  pageId: ui/settings-view
  userGroups: []
  appRoles: ["Location:admin"]    # Only Location admins
```

**Multiple roles (OR logic - user needs ANY of these):**
```yaml
- label: "Reports"
  link: /reports
  pageId: ui/reports-view
  userGroups: []
  appRoles: ["admin", "manager", "viewer"]  # User with any of these roles
```

**Combined (userGroups OR appRoles):**
```yaml
- label: "Special Access"
  link: /special
  pageId: ui/special-view
  userGroups: ["vip-users"]       # VIP users can access
  appRoles: ["admin"]              # OR admins can access
```

#### Format Rules (MUST Follow)

1. **Always array:** Even single role must be in array
   ```yaml
   appRoles: ["admin"]           # ✅ CORRECT
   appRoles: "admin"             # ❌ WRONG
   ```

2. **Lowercase:** Role names must be lowercase
   ```yaml
   appRoles: ["Location:admin"]  # ✅ CORRECT
   appRoles: ["Location:Admin"]  # ❌ WRONG
   ```

3. **Colon separator:** Use `:` not `.`
   ```yaml
   appRoles: ["Location:admin"]  # ✅ CORRECT
   appRoles: ["Location.admin"]  # ❌ WRONG
   ```

4. **Include app name:** Don't use role name alone
   ```yaml
   appRoles: ["Location:admin"]  # ✅ CORRECT
   appRoles: ["admin"]           # ⚠️ Works but assumes current app
   ```

#### Common Mistakes Table

| ❌ WRONG | ✅ CORRECT |
|---------|-----------|
| `appRoles: "App:role"` | `appRoles: ["App:role"]` |
| `appRoles: ["role"]` | `appRoles: ["App:role"]` |
| `appRoles: ["App:Role"]` | `appRoles: ["App:role"]` |
| `appRoles: ["App.role"]` | `appRoles: ["App:role"]` |

#### When to Use Each

| Use Case | Use appRoles | Use userGroups |
|----------|--------------|----------------|
| App-specific permissions | ✅ | ❌ |
| Most common use case | ✅ | ❌ |
| System-wide user groups | ❌ | ✅ |
| Usually leave empty | ❌ | ✅ |

**Recommendation:** Start with `appRoles` for permissions. Leave `userGroups: []` empty unless you specifically need system user group restrictions.

---

## Step 4: Migrate List View (Portfolio) - Complete Walkthrough

Let's migrate a v4 search-cell ViewTemplate to v5 ObjectSearchComponent step by step.

### 4.1 Analyze V4 ViewTemplate

**File:** `ViewTemplates/search_location.xml`

```xml
<View template='search-cell' browseview='Location.view.browse'>
    <Service service='Location.Location:All'>
        <scope.BaseLocationScope>LocationScope</scope.BaseLocationScope>
    </Service>

    <Filters>
        <Field title='Location Type' type='dynamiclist'
               service='Location.AllLocationTypes'
               key_field='LocationTypeKey'
               text_field='LocationType'/>
    </Filters>

    <Content>
        <Cells>
            <Cell width='25%' header='Location Name'>
                #{row.FullName}
            </Cell>
            <Cell width='25%' header='Display Name'>
                #{row.SecondName}
            </Cell>
        </Cells>
    </Content>
</View>
```

**Extract:**
- Service: `Location.Location:All` with `scope.BaseLocationScope: LocationScope`
- Filters: Location Type (dynamic select)
- Columns: FullName, SecondName, Description, LocationType, Hidden (status)

### 4.2 Define Services

**File:** `src/services.ts`

```typescript
import type { ExecuteServiceConfig } from 'uxp/components';

export const App = 'Location';

// Service configurations
export const LocationServices = {
    getAll: (params?: any): ExecuteServiceConfig => ({
        type: 'service',
        serviceId: `${App}.Location:All`,
        params: {
            'scope.BaseLocationScope': 'LocationScope',
            ...params
        }
    }),

    getDetails: (LocationKey: string): ExecuteServiceConfig => ({
        type: 'service',
        serviceId: `${App}.Location:Details`,
        params: { LocationKey }
    }),

    create: (params: any): ExecuteServiceConfig => ({
        type: 'service',
        serviceId: `${App}.Location:Create`,
        params
    }),

    update: (params: any): ExecuteServiceConfig => ({
        type: 'service',
        serviceId: `${App}.Location:Update`,
        params
    })
};

export const LocationTypeServices = {
    getAll: (params?: any): ExecuteServiceConfig => ({
        type: 'service',
        serviceId: `${App}.AllLocationTypes`,
        params
    })
};
```

### 4.3 Define Types

**File:** `src/types.ts`

```typescript
export interface Location {
    LocationKey: string;
    LocationName: string;
    FullName: string;
    SecondName?: string;
    LocationCode?: string;
    Address?: string;
    LocationType?: string;
    LocationTypeKey?: string;
    Description?: string;
    Hidden: string; // '0' = Active, '1' = Inactive
}

export interface LocationType {
    LocationTypeKey: string;
    LocationType: string;
}
```

### 4.4 Create View Component - Progressive Steps

We'll build the PortfolioView progressively, starting with a minimal list and adding features step by step. Each step uses **ACTUAL code from the Location app**.

---

### 4.4.1 Step 1: Basic List (Minimal)

Start with the simplest working list - just data fetching and columns.

**File:** `src/views/portfolio/PortfolioView.tsx`

```typescript
import React, { FunctionComponent, memo, useCallback, useMemo, useRef } from "react";
import {
    ObjectSearchComponent,
    ObjectSearchComponentHandlers,
    OSCColumn,
    RowData,
    Filters,
    Sort,
    useUXPContext,
    useExecuteRequestCallback,
    Chip
} from "uxp/components";
import { LocationServices } from "../../services";
import { LocationDetails } from "../../types";
import './PortfolioView.scss';

const PortfolioViewBase: FunctionComponent = () => {
    const uxpContext = useUXPContext();
    const objectSearchRef = useRef<ObjectSearchComponentHandlers>(null);

    // Data fetching
    const executeGetAll = useExecuteRequestCallback(LocationServices.getAll());

    const getAll = useCallback(async (
        page: number,
        pageSize: number,
        query?: string,
        filters?: Filters,
        sort?: Sort
    ): Promise<{ items: RowData[] }> => {
        const params: any = {
            max: pageSize,
            last: (page - 1) * pageSize,
            q: query || undefined,
            // Will add filters later
        };

        const { data } = await executeGetAll(params);
        return { items: data || [] };
    }, [executeGetAll]);

    // Columns
    const columns = useMemo((): OSCColumn[] => {
        return [
            {
                id: 'LocationName',
                label: 'Name',
                isSortable: true,
                isResizable: true
            },
            {
                id: 'LocationCode',
                label: 'Site ID#',
                isResizable: true
            },
            {
                id: 'FullName',
                label: 'Full Name',
                isResizable: true
            },
            {
                id: 'LocationType',
                label: 'Type',
                isResizable: true
            },
            {
                id: 'Hidden',
                label: 'Status',
                isResizable: true,
                renderColumn: (item: LocationDetails) => {
                    const isActive = item.Hidden === '0';
                    return (
                        <Chip
                            label={isActive ? 'Active' : 'Inactive'}
                            backgroundColor={isActive
                                ? uxpContext.theme?.activeStatusBGColor
                                : uxpContext.theme?.inactiveStatusBGColor}
                            textColor={isActive
                                ? uxpContext.theme?.activeStatusTextColor
                                : uxpContext.theme?.inactiveStatusTextColor}
                        />
                    );
                }
            }
        ];
    }, [uxpContext.theme]);

    return (
        <div className="ilocapp_portfoliosview__container">
            <ObjectSearchComponent
                ref={objectSearchRef}
                title="Locations"
                data={getAll}
                columns={columns}
                pageSize={50}
                total={0}
                idField="LocationKey"
                search={{ enable: true }}
            />
        </div>
    );
};

export const PortfolioView = memo(PortfolioViewBase);
```

**Key Points:**
- ✅ Use `memo` to wrap component
- ✅ Use `useCallback` for `getAll` handler
- ✅ Use `useMemo` for `columns` array
- ✅ Use `useRef` for ObjectSearchComponent access
- ✅ Use `useExecuteRequestCallback` for data fetching (NOT `useExecuteRequest`)

---

### 4.4.2 Step 2: Add Filters

Now add filters to allow users to narrow down results.

**Add this utility function in `src/utils.ts`:**

```typescript
import { Filters, Sort, hasValue } from "uxp/components";

export const buildDefaultServiceParams = (
    page: number,
    pageSize: number,
    query?: string,
    filters?: Filters,
    sort?: Sort
): any => {
    const params: any = {
        max: pageSize,
        last: (page - 1) * pageSize
    };

    if (hasValue(query)) params.q = query;

    // ⚠️ CRITICAL: Access filters via filters.filters (note the double .filters)
    if (filters?.filters) {
        Object.entries(filters.filters).forEach(([key, value]) => {
            if (!hasValue(value)) return;
            params[key] = value;
        });
    }

    // Sort handling
    const sortEntry = Object.entries(sort || {}).find(([_, v]) => v !== 0);
    if (sortEntry) {
        const [field, order] = sortEntry;
        params.__sort__ = field;
        params.__sortorder__ = order === 1 ? 'asc' : 'desc';
    }

    return params;
};
```

**Update PortfolioView to add filters:**

```typescript
// Add imports
import { FilterConfig, useExecuteRequest } from "uxp/components";
import { LocationTypeServices } from "../../services";
import { LocationType } from "../../types";
import { buildDefaultServiceParams } from "../../utils";

// Add after useUXPContext
const statusMap: Record<string, string> = useMemo(() => ({
    'All': '',
    'Active': '0',
    'Inactive': '1'
}), []);

const { data: locationTypes = [] } = useExecuteRequest<LocationType[]>(
    LocationTypeServices.getAll()
);

// Update getAll to use buildDefaultServiceParams
const getAll = useCallback(async (
    page: number,
    pageSize: number,
    query?: string,
    filters?: Filters,
    sort?: Sort
): Promise<{ items: RowData[] }> => {
    const params = buildDefaultServiceParams(page, pageSize, query, filters, sort);
    const { data } = await executeGetAll(params);
    return { items: data || [] };
}, [executeGetAll]);

// Add filterConfiguration
const filterConfiguration: FilterConfig = useMemo(() => ({
    formFields: [
        {
            title: '',
            columns: 1,
            fields: [
                {
                    name: 'LocationTypeKey',
                    label: 'Location Type',
                    type: 'select',
                    options: [
                        { label: 'All', value: '' },
                        ...(locationTypes || []).map(lt => ({
                            label: lt.LocationType,
                            value: lt.LocationTypeKey
                        }))
                    ]
                },
                {
                    name: 'Hidden',
                    label: 'Status',
                    type: 'select',
                    options: Object.entries(statusMap).map(([key, value]) => ({
                        label: key,
                        value: value
                    }))
                }
            ]
        }
    ]
}), [locationTypes, statusMap]);

// Add to ObjectSearchComponent
<ObjectSearchComponent
    ...
    filters={filterConfiguration}
/>
```

**Key Points:**
- ✅ `buildDefaultServiceParams` handles `filters.filters.fieldName` access automatically
- ✅ Filter configuration uses `useMemo`
- ✅ Dynamic options from `locationTypes` data

---

### 4.4.3 Step 3: Add Actions (Create/Edit/Delete)

Add action buttons and row actions with form integration.

**Add to imports:**

```typescript
import { ButtonGroup, useSearchParams, useRouterContext, useDeleteAction, DefaultActionColumnsConfig, BaseAction } from "uxp/components";
import { LocationFormComponent } from "../../forms/location-form/LocationForm";
```

**Add after useUXPContext:**

```typescript
interface SearchParams {
    add?: string;
    edit?: string;
}

const { add, edit } = useSearchParams<SearchParams>();
const { navigate, generateURL } = useRouterContext();
const { delete: deleteAction, makeVisible: makeVisibleAction } = useDeleteAction();
```

**Add action buttons:**

```typescript
const actionButtons = useMemo(() => {
    return (
        <ButtonGroup
            buttons={[
                {
                    id: 'add',
                    title: 'New',
                    leftIcon: 'fal plus',
                    onClick: () => {
                        navigate(generateURL({ searchParams: { add: '1' } }));
                    }
                }
            ]}
            variant='primary'
        />
    );
}, [navigate, generateURL]);
```

**Add row actions:**

```typescript
const defaultActionColumns: DefaultActionColumnsConfig = useMemo(() => ({
    actionsColumn: {
        enable: true,
        headerActions: {
            sort: true,
            customiseColumns: true
        },
        rowActions: (item: LocationDetails) => {
            const actions: BaseAction[] = [
                {
                    icon: 'fal pencil',
                    label: 'Edit',
                    onClick: () => navigate(generateURL({
                        searchParams: { edit: item.LocationKey }
                    }))
                }
            ];

            // Show Delete when active, Make Visible when hidden
            if (item.Hidden === '0') {
                actions.push({
                    icon: 'fal trash',
                    label: 'Delete',
                    onClick: async () => {
                        await deleteAction({
                            model: 'Location.Location',
                            key: item.LocationKey,
                            canHide: true,
                            deleteTitle: 'Delete Location',
                            onSuccess: () => {
                                objectSearchRef.current?.refreshCurrentPage();
                            }
                        });
                    }
                });
            } else if (item.Hidden === '1') {
                actions.push({
                    icon: 'fal eye',
                    label: 'Make Visible',
                    onClick: async () => {
                        await makeVisibleAction({
                            model: 'Location.Location',
                            key: item.LocationKey,
                            confirmTitle: 'Make Visible',
                            onSuccess: () => {
                                objectSearchRef.current?.refreshCurrentPage();
                            }
                        });
                    }
                });
            }

            return actions;
        }
    }
}), [navigate, generateURL, deleteAction, makeVisibleAction]);
```

**Add form handling:**

```typescript
const closeForm = useCallback(() => {
    navigate(generateURL({ removeParams: ['add', 'edit'] }));
}, [navigate, generateURL]);

// Add to JSX after ObjectSearchComponent
<LocationFormComponent
    isOpen={add === '1' || edit === '1'}
    onClose={closeForm}
    afterSave={(locationKey) => {
        closeForm();
        objectSearchRef.current?.refreshCurrentPage();
    }}
    editInstance={edit}
/>
```

**Update ObjectSearchComponent:**

```typescript
<ObjectSearchComponent
    ...
    actionButtons={actionButtons}
    defaultActionColumns={defaultActionColumns}
/>
```

**useDeleteAction Hook Explained:**

The `useDeleteAction` hook provides delete with dependency checking:

- **canHide: true** - If delete fails due to dependencies, offers to hide instead
- **onSuccess callback** - Receives action type ('delete' | 'hide')
- **Automatic confirmation** - Shows confirmation dialog
- **Dependency checking** - Backend checks if object has dependencies
- **Graceful fallback** - Hides object if deletion not possible

**Form Component (SlideInForm + DataEntryForm):**

See complete form example in section 8 of this guide.

---

### 4.4.4 Step 4: Add Details Panel

Add a details panel that opens when clicking on rows. We'll use the **ACTUAL LocationDetails component** from the Location app.

**LocationDetails Component (Actual Code from Location App):**

**File:** `src/components/location-details/LocationDetails.tsx`

```typescript
import React, { FunctionComponent, useCallback, useMemo, useRef } from "react";
import {
    ObjectDetailsPanel,
    ObjectInfoCardProps,
    Tab,
    TabComponent,
    useUXPContext,
    useSearchParams,
    useRouterContext,
    useDeleteAction,
    useCounter,
    ComponentRenderer,
    Chip,
    QRCodeComponent,
    QRCodeComponentHandles,
    IContextProvider
} from 'uxp/components';
import { getLocationDetails, LocationDetails, App } from "../../services";
import { LocationFormComponent } from "../../forms/location-form/LocationForm";
import { ChildLocations } from "./child-locations/ChildLocations";
import { Layouts } from "./layouts/Layouts";
import { SiteImage } from "./site-image/SiteImage";
import { SiteMap } from "./site-map/SiteMap";
import { NearbyLocations } from "./nearby-locations/NearbyLocations";

interface LocationDetailsComponentProps {
    locationKey: string;
    onClose?: () => void;
}

interface SearchParams {
    edit?: string;
    tab?: string;
}

const OtherDetailsTabs: FunctionComponent<{ location: LocationDetails }> = ({ location }) => {
    const { tab } = useSearchParams<SearchParams>();
    const { navigate, generateURL } = useRouterContext();

    const tabs: Tab[] = [
        {
            id: 'childlocations',
            label: 'Child Locations',
            content: <ChildLocations location={location} />
        },
        {
            id: 'layouts',
            label: 'Layouts',
            content: <Layouts location={location} />
        },
        {
            id: 'nearbylocations',
            label: 'Nearby Locations',
            content: <NearbyLocations location={location} />
        }
    ];

    return (
        <TabComponent
            tabs={tabs}
            selected={tab || 'childlocations'}
            onChangeTab={(tab) => {
                navigate(generateURL({ searchParams: { tab } }));
            }}
        />
    );
};

const SiteProperties: FunctionComponent<{ location: LocationDetails }> = ({ location }) => {
    return (
        <div className="ilocapp_locationdetails__siteproperties">
            <SiteImage location={location} />
            <SiteMap location={location} />
        </div>
    );
};

export const LocationDetailsComponent: FunctionComponent<LocationDetailsComponentProps> = ({
    locationKey,
    onClose
}) => {
    const uxpContext: IContextProvider = useUXPContext();
    const { delete: deleteAction, makeVisible: makeVisibleAction } = useDeleteAction();
    const { edit } = useSearchParams<SearchParams>();
    const { navigate, generateURL } = useRouterContext();

    const qrCodeRef = useRef<QRCodeComponentHandles>(null);
    const { counter, updateCounter } = useCounter();

    const getDetails = useCallback(async (): Promise<LocationDetails | null> => {
        const data = await getLocationDetails(uxpContext, locationKey);
        return data || null;
    }, [uxpContext, locationKey, counter]);

    const closeForm = useCallback(() => {
        navigate(generateURL({ removeParams: ['edit'] }));
    }, [navigate, generateURL]);

    return (
        <div className="ilocapp_locationdetails__container">
            <ObjectDetailsPanel
                data={getDetails}
                title={{
                    title: (item: LocationDetails) => item?.LocationName,
                    status: (item: LocationDetails) => {
                        const isActive = item.Hidden === '0';
                        return (
                            <Chip
                                icon="fas circle"
                                label={isActive ? 'Active' : 'Inactive'}
                                backgroundColor={isActive
                                    ? uxpContext.theme?.activeStatusBGColor
                                    : uxpContext.theme?.inactiveStatusBGColor}
                                textColor={isActive
                                    ? uxpContext.theme?.activeStatusTextColor
                                    : uxpContext.theme?.inactiveStatusTextColor}
                            />
                        );
                    }
                }}
                toolbarItems={(item: LocationDetails) => {
                    const isHidden = item.Hidden === '1';

                    return {
                        left: [
                            {
                                icon: 'fal pencil',
                                label: 'Edit',
                                onClick: () => navigate(generateURL({
                                    searchParams: { edit: '1' }
                                }))
                            },
                            {
                                icon: 'fal print',
                                label: 'PDF QR Code',
                                onClick: () => qrCodeRef?.current?.print()
                            }
                        ],
                        right: isHidden
                            ? [
                                {
                                    icon: 'fal eye',
                                    label: 'Make Visible',
                                    onClick: async () => {
                                        await makeVisibleAction({
                                            model: 'Location.Location',
                                            key: item.LocationKey,
                                            confirmTitle: 'Make Visible',
                                            onSuccess: () => updateCounter()
                                        });
                                    }
                                }
                            ]
                            : [
                                {
                                    icon: 'fal trash',
                                    label: 'Delete Location',
                                    onClick: async () => {
                                        await deleteAction({
                                            model: 'Location.Location',
                                            key: item.LocationKey,
                                            canHide: true,
                                            deleteTitle: 'Delete Location',
                                            onSuccess: (action) => {
                                                if (action === 'delete' && onClose) {
                                                    onClose();
                                                } else {
                                                    updateCounter();
                                                }
                                            }
                                        });
                                    }
                                }
                            ]
                    };
                }}
                generalDetails={(item: LocationDetails) => ({
                    columns: 2,
                    fields: [
                        {
                            label: 'Location',
                            value: item?.LocationName
                        },
                        {
                            label: 'Portfolio Type',
                            value: item?.LocationType
                        },
                        {
                            label: 'Parent Location',
                            value: item?.ParentLocationName || 'N/A'
                        },
                        {
                            label: 'Area',
                            value: (item?.FloorSize || 0) + ' sq.m.(m²)'
                        },
                        {
                            label: 'Description',
                            value: item?.Description || 'N/A'
                        },
                        {
                            label: 'Address',
                            value: item?.Address || 'N/A'
                        },
                        {
                            label: 'Time Zone',
                            value: item?.TimeZone || 'N/A'
                        },
                        {
                            label: 'Currency',
                            value: item?.Currency || 'N/A'
                        },
                        {
                            label: 'QR Code',
                            value: 'N/A',
                            renderValue: () => {
                                return (
                                    <QRCodeComponent
                                        value={`/view/location/details/${item.LocationKey}`}
                                        shadow={false}
                                        ref={qrCodeRef}
                                    />
                                );
                            }
                        }
                    ]
                } as ObjectInfoCardProps)}
                otherDetails={(item: LocationDetails) => (
                    <OtherDetailsTabs location={item} />
                )}
                additionlDetails={[
                    {
                        id: 'site-properties',
                        icon: 'fal lightbulb-on',
                        label: 'Site Properties',
                        content: (item: LocationDetails) => (
                            <SiteProperties location={item} />
                        )
                    },
                    {
                        id: 'activity-log',
                        icon: 'fal clock-rotate-left',
                        label: 'Activities',
                        content: (item: LocationDetails) => (
                            <ComponentRenderer
                                moduleId="iviva-system-app"
                                componentId="activity-log"
                                type={"ui" as any}
                                additionalProps={{
                                    objectType: 'Location',
                                    objectKey: item.LocationKey
                                }}
                            />
                        )
                    }
                ]}
                showCloseButton={!!onClose}
                onClose={onClose}
            />

            <LocationFormComponent
                isOpen={edit === '1'}
                onClose={closeForm}
                afterSave={() => {
                    closeForm();
                    updateCounter();
                }}
                editInstance={locationKey}
            />
        </div>
    );
};
```

**Add to PortfolioView:**

```typescript
// Add to imports
import { CustomDetailsPanelProps } from "uxp/components";
import { LocationDetailsComponent } from "../../components/location-details/LocationDetails";

// Add detailsPanel configuration
const detailsPanel: CustomDetailsPanelProps = useMemo(() => {
    return {
        renderDetails: (itemId: string, onClose: () => void) => (
            <LocationDetailsComponent
                locationKey={itemId}
                onClose={onClose}
            />
        )
    };
}, []);

// Add to ObjectSearchComponent
<ObjectSearchComponent
    ...
    detailsPanel={detailsPanel}
    collapsedWidth={'25rem'}
/>
```

**ObjectDetailsPanel Structure:**
- **title** - Dynamic title with status chip
- **toolbarItems** - Toolbar actions (Edit, Delete, Print QR)
- **generalDetails** - Key-value pairs in grid layout
- **otherDetails** - Tabs for related content (Child Locations, Layouts, etc.)
- **additionlDetails** - Additional expandable sections (Site Properties, Activity Log)

**When to use Internal vs Custom Details Panel:**

| Use Internal (Default) | Use Custom (ObjectDetailsPanel) |
|------------------------|----------------------------------|
| Details only shown via list click | Have separate route for details (e.g., `/details/:key`) |
| Simple details display | Complex details with tabs and sections |
| No route needed | Want to reuse same component in list and standalone |
| Quick implementation | Full control over structure |

**Location app uses custom** because it has:
1. Route: `/details/:locationKey`
2. Complex structure with tabs, sections, and ComponentRenderer
3. Same component reused in both list panel and standalone page

---

#### 🔧 Optional: Add Details Route to Configuration

**⚠️ Only needed if you're using Option B (Custom Details Panel) with a separate route.**

If you created a standalone details route (like Location app), add it to `Configuration.yml`:

**Update `Configuration.yml`** to add details route:

```yaml
# App Metadata
appId: Location
bundleId: iviva-location-app
bundleJsonPath: /Resources/views/bundle.json
scripts:
  - "/Resources/views/dist/main.js"
baseRoute: /location

# Navigation Links
navigationLinks:
  - label: "Portfolios"
    icon: "fas list"
    link: /portfolios
    pageId: ui/portfolio-view

# Other Routes
otherRoutes:
  "/details/:locationKey":           # ← OPTIONAL: Details route
    pageId: ui/details-view
    title: "Location Details"
  "/":
    redirectTo: "/portfolios"
```

**Then register the details view:**

**File:** `src/index.tsx`

```typescript
import { registerUI, enableLocalization } from './uxp';
import { PortfolioView } from './views/portfolio/PortfolioView';
import { DetailsView } from './views/details/DetailsView';  // ← OPTIONAL
import './global.scss';

registerUI({
    id: "portfolio-view",
    component: PortfolioView
});

registerUI({                           // ← OPTIONAL
    id: "details-view",
    component: DetailsView             // Wrapper that renders LocationDetailsComponent
});

enableLocalization();
```

**Note:** Most apps can skip this. Use Option A (Internal Details Panel) unless you need:
- Standalone details page accessible via URL
- Same details component reused in multiple places
- Shareable/bookmarkable details URLs

---

### 4.4.5 Putting It All Together

Your final PortfolioView will have all these pieces working together:

✅ **Step 1** - Basic list with columns
✅ **Step 2** - Filters added
✅ **Step 3** - Actions (Add/Edit/Delete) with useDeleteAction hook
✅ **Step 4** - Details panel with ObjectDetailsPanel

**Key Optimization Patterns:**
- Use `memo` for component
- Use `useCallback` for ALL handlers
- Use `useMemo` for ALL computed values (columns, filters, actions, etc.)
- Use `useRef` for component refs
- Use `buildDefaultServiceParams` for consistent filter access

**Reference:** `/Location/5.0/Resources/views/src/views/portfolio/PortfolioView.tsx` for the complete implementation with all advanced features (views, events, pluggable components, etc.)

### 4.5 Add Styles

**File:** `src/views/portfolio/PortfolioView.scss`

```scss
.location-name {
    width: 100%;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
```

### 4.6 Register View

**File:** `src/index.tsx`

```typescript
import { registerUI, enableLocalization } from './uxp';
import { PortfolioView } from './views/portfolio/PortfolioView';
import './global.scss';

registerUI({
    id: "portfolio-view",
    component: PortfolioView
});

enableLocalization();
```

---

### 4.7 Add Navigation Link to Configuration

Now that we've registered the portfolio view, let's make it accessible via the sidebar.

**Update `Configuration.yml`** to add the portfolio navigation link:

```yaml
# App Metadata
appId: Location
bundleId: iviva-location-app
bundleJsonPath: /Resources/views/bundle.json
scripts:
  - "/Resources/views/dist/main.js"
baseRoute: /location

# Navigation Links
navigationLinks:
  - label: "Portfolios"              # ← NEW: First navigation link added
    icon: "fas list"
    link: /portfolios
    pageId: ui/portfolio-view        # Must match registerUI id

otherRoutes: {}
```

**What this does:**
- Adds "Portfolios" link to sidebar
- Makes view accessible at `/location/portfolios` (baseRoute + link)
- `pageId` must match the `id` used in `registerUI()`

---

### 4.8 Add Root Redirect

With at least one navigation link, add a redirect from root to the first view:

**Update `Configuration.yml`** to add root redirect:

```yaml
# App Metadata
appId: Location
bundleId: iviva-location-app
bundleJsonPath: /Resources/views/bundle.json
scripts:
  - "/Resources/views/dist/main.js"
baseRoute: /location

# Navigation Links
navigationLinks:
  - label: "Portfolios"
    icon: "fas list"
    link: /portfolios
    pageId: ui/portfolio-view

# Other Routes
otherRoutes:
  "/":                               # ← NEW: Root redirect added
    redirectTo: "/portfolios"        # Redirects /location to /location/portfolios
```

**What this does:**
- When users visit `/location/` (app root), they're automatically redirected to `/location/portfolios`
- Ensures users always land on a valid page

**Your app is now functional!** Users can:
1. Navigate to `/location/` → automatically redirected to `/location/portfolios`
2. See "Portfolios" link in sidebar
3. View the portfolio list with all features (filters, actions, details panel)

---

## Step 5: Settings Page Migration

### 5.1 Simple Config (SimpleConfigurationTable)

For simple CRUD configurations like "Location Types":

**V4:** `ViewTemplates/locationtypes.xml` (template='config')

**V5:** Use `SimpleConfigurationTable`

```typescript
import React, { FunctionComponent, useCallback } from 'react';
import {
    SimpleConfigurationTable,
    useUXPContext,
    executeConfig,
    useToast,
    useAlert
} from 'uxp/components';
import { LocationTypeServices } from '../../services';
import { LocationType } from '../../types';

export const LocationTypesConfig: FunctionComponent = () => {
    const uxpContext = useUXPContext();
    const toast = useToast();
    const alerts = useAlert();

    const handleCreate = useCallback(async (item: LocationType) => {
        const { error } = await executeConfig(
            uxpContext,
            LocationTypeServices.create({ LocationType: item.LocationType })
        );

        if (error) {
            alerts.error(error);
            return { success: false };
        }

        toast.success('Location type created');
        return { success: true };
    }, [uxpContext]);

    const handleUpdate = useCallback(async (item: LocationType) => {
        const { error } = await executeConfig(
            uxpContext,
            LocationTypeServices.update({
                LocationTypeKey: item.LocationTypeKey,
                LocationType: item.LocationType
            })
        );

        if (error) {
            alerts.error(error);
            return { success: false };
        }

        toast.success('Location type updated');
        return { success: true };
    }, [uxpContext]);

    const handleDelete = useCallback(async (item: LocationType) => {
        if (!await alerts.confirm({
            title: 'Delete Location Type',
            content: `Are you sure you want to delete "${item.LocationType}"?`
        })) return { success: false };

        const { error } = await executeConfig(
            uxpContext,
            LocationTypeServices.delete({ LocationTypeKey: item.LocationTypeKey })
        );

        if (error) {
            alerts.error(error);
            return { success: false };
        }

        toast.success('Location type deleted');
        return { success: true };
    }, [uxpContext, alerts]);

    return (
        <SimpleConfigurationTable
            data={[]} // Will be fetched internally
            fields={[
                {
                    name: 'LocationType',
                    label: 'Location Type',
                    type: 'text',
                    validate: { required: true }
                }
            ]}
            idField="LocationTypeKey"
            displayField="LocationType"
            onCreate={handleCreate}
            onUpdate={handleUpdate}
            onDelete={handleDelete}
            title="Location Types"
        />
    );
};
```

### 5.2 Complex Config (ObjectSearchComponent)

For complex configurations that need filters, custom columns, or advanced features:

**Example:** Location Working Hours (from Location app)

```typescript
// Use ObjectSearchComponent instead of SimpleConfigurationTable
// See: /Location/5.0/Resources/views/src/components/settings/LocationExceptionsAndWorkingHours.tsx

export const LocationWorkingHoursConfig: FunctionComponent = () => {
    return (
        <ObjectSearchComponent
            title="Working Hours"
            data={getAll}
            columns={columns}
            pageSize={50}
            total={0}
            idField="Key"
            filters={filters} // Complex filters
            actionButtons={addButton}
            defaultActionColumns={{
                actionsColumn: {
                    enable: true,
                    actions: rowActions
                }
            } as any}
        />
    );
};
```

**When to use ObjectSearchComponent over SimpleConfigurationTable:**
- Need filters
- Need custom column rendering
- Need pagination
- Complex row actions
- Need export functionality

### 5.3 ConfigurationView (Settings Page)

Wrap multiple settings sections in ConfigurationView:

**File:** `src/views/settings/SettingsView.tsx`

```typescript
import React, { FunctionComponent, useState, useMemo } from 'react';
import { ConfigurationView, ConfigSection, useSearchParams, useRouterContext } from 'uxp/components';
import { GeneralConfig } from '../../components/settings/GeneralConfig';
import { LocationTypesConfig } from '../../components/settings/LocationTypesConfig';
import { WorkingHoursConfig } from '../../components/settings/WorkingHoursConfig';

export const SettingsView: FunctionComponent = () => {
    const { section } = useSearchParams<{ section?: string }>();
    const { navigate, generateURL } = useRouterContext();
    const [selected, setSelected] = useState(section || 'general');

    const sections = useMemo((): ConfigSection[] => {
        return [
            {
                id: 'general',
                title: 'General Configuration',
                content: <GeneralConfig />,
                keywords: ['general', 'config', 'settings']
            },
            {
                id: 'location-types',
                title: 'Location Types',
                content: <LocationTypesConfig />,
                keywords: ['types', 'categories']
            },
            {
                id: 'working-hours',
                title: 'Working Hours & Exceptions',
                content: <WorkingHoursConfig />,
                keywords: ['hours', 'schedule', 'exceptions']
            }
        ];
    }, []);

    const handleSectionChange = (sectionId: string) => {
        setSelected(sectionId);
        navigate(generateURL({ searchParams: { section: sectionId } }));
    };

    return (
        <ConfigurationView
            title="Location Settings"
            sections={sections}
            selected={selected}
            onChangeSection={handleSectionChange}
        />
    );
};
```

---

### 5.4 Using External Components from System App

Instead of building common functionality from scratch, you can reuse components from the System app (iviva-system-app). This is particularly useful for standard features like user role configuration, activity logs, and file attachments.

#### Available System App Components

| Component ID | Description | Common Use Case |
|--------------|-------------|-----------------|
| `user-role-configurator` | UI for managing app-specific user roles and permissions | Settings page - allow admins to configure who has access to app features |
| `activity-log` | Display activity history for an object | Details panel - show audit trail of changes to an object |
| `attachment-uploader` | File upload and management interface | Forms or details - attach files to objects |

#### Using ComponentRenderer

**Import:**
```typescript
import { ComponentRenderer } from 'uxp/components';
```

**Syntax:**
```typescript
<ComponentRenderer
    moduleId="iviva-system-app"              // Module hosting the component
    componentId="user-role-configurator"     // Component ID
    type={"ui" as any}                       // Component type (ui, widget, etc)
    additionalProps={{                       // Props to pass to the component
        app: App,
        objectType: 'Location',
        objectKey: locationKey
    }}
/>
```

#### Example 1: User Role Configurator in Settings

Add user role configuration to your settings page to let admins control permissions.

**File:** `src/views/settings/SettingsView.tsx`

```typescript
import React, { FunctionComponent, useState, useMemo } from 'react';
import { ConfigurationView, ConfigSection, ComponentRenderer, useSearchParams, useRouterContext } from 'uxp/components';
import { App } from '../../services';  // Your app identifier

export const SettingsView: FunctionComponent = () => {
    const { section } = useSearchParams<{ section?: string }>();
    const { navigate, generateURL } = useRouterContext();
    const [selected, setSelected] = useState(section || 'general');

    const sections = useMemo((): ConfigSection[] => {
        return [
            {
                id: 'general',
                title: 'General Configuration',
                content: <GeneralConfig />,
                keywords: ['general', 'settings']
            },
            {
                id: 'user-role-configuration',        // ← NEW: User roles section
                title: 'User Role Configuration',
                content: (
                    <ComponentRenderer
                        moduleId="iviva-system-app"
                        componentId="user-role-configurator"
                        type={"ui" as any}
                        additionalProps={{
                            app: App,  // Pass your app identifier (e.g., "Location.Location")
                        }}
                    />
                ),
                keywords: ['user roles', 'app roles', 'permissions']
            }
        ];
    }, []);

    const handleSectionChange = (sectionId: string) => {
        setSelected(sectionId);
        navigate(generateURL({ searchParams: { section: sectionId } }));
    };

    return (
        <ConfigurationView
            title="Location Settings"
            sections={sections}
            selected={selected}
            onChangeSection={handleSectionChange}
        />
    );
};
```

**What this does:**
- Adds "User Role Configuration" section to settings
- Lets admins assign app roles to users (e.g., "Location:admin", "Location:editor")
- Uses System app's pre-built role management UI
- Automatically saves to database and enforces permissions

#### Example 2: Activity Log in Details Panel

Add activity history to object details to show audit trail.

**File:** `src/components/location-details/LocationDetails.tsx`

```typescript
import { ObjectDetailsPanel, ComponentRenderer } from 'uxp/components';
import { LocationDetails } from '../../services';

export const LocationDetailsComponent: FunctionComponent<LocationDetailsComponentProps> = ({ locationKey }) => {
    return (
        <ObjectDetailsPanel
            data={getDetails}
            title={{ /* ... */ }}
            generalDetails={(item: LocationDetails) => ({ /* ... */ })}
            otherDetails={(item: LocationDetails) => ({ /* ... */ })}
            additionlDetails={[
                {
                    id: 'site-properties',
                    icon: 'fal lightbulb-on',
                    label: 'Site Properties',
                    content: (item: LocationDetails) => <SiteProperties location={item} />
                },
                {
                    id: 'activity-log',                    // ← NEW: Activity log tab
                    icon: 'fal clock-rotate-left',
                    label: 'Activities',
                    content: (item: LocationDetails, loading) => {
                        return <ComponentRenderer
                            moduleId="iviva-system-app"
                            componentId="activity-log"
                            type={"ui" as any}
                            additionalProps={{
                                objectType: 'Location',      // Model name
                                objectKey: item.LocationKey  // Object identifier
                            }}
                        />
                    }
                }
            ]}
        />
    );
};
```

**What this does:**
- Adds "Activities" tab to location details
- Shows who created, modified, or deleted the location
- Displays timestamps and change descriptions
- Automatically tracks changes made through Lucy API

#### ComponentRenderer Props Reference

| Prop | Type | Required | Description |
|------|------|----------|-------------|
| `moduleId` | string | ✅ | Module hosting the component (e.g., "iviva-system-app") |
| `componentId` | string | ✅ | Component identifier to load (e.g., "user-role-configurator") |
| `type` | string | ✅ | Component type - use `"ui" as any` for System components |
| `additionalProps` | object | ❌ | Props to pass to the component (varies by component) |

#### When to Use External vs Custom Components

**Use System App Components:**
- ✅ User role configuration - standard across all apps
- ✅ Activity logs - consistent audit trail format
- ✅ File attachments - standardized file management
- ✅ Any functionality that should work the same way everywhere

**Build Custom Components:**
- ✅ App-specific business logic (location hierarchy, asset workflows, etc)
- ✅ Unique UI requirements not covered by System app
- ✅ Performance-critical views that need optimization

**Real-world example from Location app:**
- Uses `user-role-configurator` for permissions (standard)
- Uses `activity-log` for audit trail (standard)
- Built custom `LocationDetailsComponent` for location-specific data (custom)
- Built custom `PortfolioView` for location hierarchy (custom)

---

### 5.5 Register and Add Settings to Configuration

**Step 1: Register the settings view**

**File:** `src/index.tsx`

```typescript
import { registerUI, enableLocalization } from './uxp';
import { PortfolioView } from './views/portfolio/PortfolioView';
import { SettingsView } from './views/settings/SettingsView';  // ← NEW
import './global.scss';

registerUI({
    id: "portfolio-view",
    component: PortfolioView
});

registerUI({                           // ← NEW
    id: "settings-view",
    component: SettingsView
});

enableLocalization();
```

**Step 2: Update `Configuration.yml`** to add settings navigation link:

```yaml
# App Metadata
appId: Location
bundleId: iviva-location-app
bundleJsonPath: /Resources/views/bundle.json
scripts:
  - "/Resources/views/dist/main.js"
baseRoute: /location

# Navigation Links
navigationLinks:
  - label: "Portfolios"
    icon: "fas list"
    link: /portfolios
    pageId: ui/portfolio-view

  - label: "Settings"                 # ← NEW: Settings link added
    icon: "fas cog"
    link: /settings
    pageId: ui/settings-view          # Must match registerUI id

# Other Routes
otherRoutes:
  "/":
    redirectTo: "/portfolios"
```

**What this does:**
- Adds "Settings" link to sidebar (below Portfolios)
- Makes settings accessible at `/location/settings`
- Settings page now shows all configuration sections (General, Location Types, Working Hours)

**Your app now has:**
1. ✅ Portfolio list view with filters, actions, and details panel
2. ✅ Settings page with multiple configuration sections
3. ✅ Two sidebar navigation links
4. ✅ Root redirect to portfolios

---

## Step 6: Best Practices & Optimizations

### 6.1 React Performance Optimizations

**Always use:**

```typescript
// 1. Memo the component
export const MyView = memo(MyViewBase);

// 2. useCallback for all handlers
const handleClick = useCallback(() => {
    // handler code
}, [dependencies]);

// 3. useMemo for computed values
const columns = useMemo((): OSCColumn[] => {
    return [/* columns */];
}, [dependencies]);

// 4. useMemo for filter/view configs
const filters = useMemo((): FilterConfig => {
    return {/* config */};
}, [dependencies]);
```

### 6.2 Real-time Updates with Events

Subscribe to events for automatic refresh:

```typescript
import { useMultiEventSubscriber } from 'uxp/components';

// Define event names
const LocationCreatedEvent = 'Location:Created';
const LocationUpdatedEvent = 'Location:Updated';
const LocationDeletedEvent = 'Location:Deleted';

// Subscribe to events
useMultiEventSubscriber('location-portfolio-instance', {
    events: [LocationCreatedEvent, LocationUpdatedEvent, LocationDeletedEvent],
    sharedCallback: objectSearchRef.current?.refreshCurrentPage
});

// Trigger events after operations
const handleCreate = async (data: any) => {
    // ... create logic
    eventDispatcher.dispatch(LocationCreatedEvent);
};
```

### 6.3 Error Handling Pattern

```typescript
const handleSave = useCallback(async (formData: IFormData) => {
    
        const { data, error } = await executeConfig(uxpContext, service);

        if (error) {
            // Service returned error
            alerts.error(error);
            return { success: false, error };
        }

        toast.success('Operation successful');
        return { success: true };

}, [uxpContext]);
```

### 6.4 Service Registry Pattern

**Always define services in `services.ts`:**

```typescript
// ✅ CORRECT
export const MyServices = {
    getAll: (params?: any): ExecuteServiceConfig => ({
        type: 'service',
        serviceId: `${App}.MyModel:All`,
        params
    })
};

// Then use:
const { data } = await executeConfig(uxpContext, MyServices.getAll());
```

**Never scatter service calls:**

```typescript
// ❌ WRONG - scattered throughout code
await uxpContext.executeService('MyApp.MyModel:All', {});
```

---

## Step 7: Testing & Validation

### 7.1 Checklist

After migration, verify:

- [ ] List view loads data correctly
- [ ] Search functionality works
- [ ] Filters apply correctly
- [ ] Sorting works on sortable columns
- [ ] Pagination works
- [ ] Add button opens form
- [ ] Edit button opens form with data
- [ ] Delete button shows confirmation and deletes
- [ ] Hidden items show "Make Visible"
- [ ] Forms validate required fields
- [ ] Forms submit successfully
- [ ] Success/error toasts appear
- [ ] Details panel opens on row click (if using internal panel)
- [ ] Details route works (if using custom panel)
- [ ] All tabs in details work
- [ ] Settings sections load correctly
- [ ] Real-time updates work (if implemented)

### 7.2 Common Issues

| Issue | Cause | Solution |
|-------|-------|----------|
| Filters not working | Using `filters.FieldName` instead of `filters.filters.FieldName` | Access via `filters?.filters?.FieldName` |
| "total is required" error | Missing `total` prop | Add `total={0}` or implement async total function |
| Form doesn't close after save | Not calling `onClose(true)` | Call `onClose(true)` in success handler |
| Data doesn't refresh after delete | Not calling refresh | Call `objectSearchRef.current?.refreshCurrentPage()` |
| Type errors on props | Guessing prop names | Read `uxp.d.ts` for exact prop definitions |

---

## Summary

This guide covered the complete migration workflow:

1. **Analyze** - Map all v4 views to v5 components
2. **Setup** - Create Configuration.yml and service definitions
3. **Configuration** - Define routes and navigation
4. **List View** - ObjectSearchComponent with progressive implementation (basic list → filters → actions → details)
5. **Settings** - ConfigurationView with SimpleConfigurationTable or ObjectSearchComponent
6. **Best Practices** - Performance optimizations, events, error handling, service registry
7. **Testing** - Validation checklist and common issues

**Reference:** Study the Location app (`/apps/iviva.dx/Location/5.0/Resources/views/`) for complete working examples of all patterns.

---
