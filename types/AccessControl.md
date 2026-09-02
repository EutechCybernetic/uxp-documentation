# AccessControl


Role/group access rule for a details page, section, or tab.
Empty/absent appRoles + userGroups means visible to everyone. Checked with
`isUserAllowed` (matches any qualified "App:role" or the user's group key).


## Definition

```tsx
export interface AccessControl {
    /** Qualified "App:role" strings. Empty/absent = everyone. */
    appRoles?: string[];
    /** User group keys. Empty/absent = everyone. */
    userGroups?: string[];
    /**
     * When the user is denied: `true` shows the not-authorised error in place of
     * the content; `false`/absent (default) hides it (tab omitted from the bar,
     * section dropped).
     */
    showUnauthorizedError?: boolean;
}
```

## Usage

```tsx
import { AccessControl } from 'uxp/components';
```

