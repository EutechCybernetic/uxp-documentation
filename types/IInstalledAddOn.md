# IInstalledAddOn


Interface for an installed add-on's metadata.


## Definition

```tsx
export interface IInstalledAddOn {
    /**
     * URL or path to the add-on's image.
     */
    Image: string;

    /**
     * User or entity that installed the add-on.
     */
    InstalledBy: string;

    /**
     * Date the add-on was installed.
     */
    InstalledDate: string;

    /**
     * Unique key for the installed add-on.
     */
    Key: string;

    /**
     * Date the add-on was last updated.
     */
    LastUpdated: string;

    /**
     * Name of the add-on.
     */
    Name: string;

    /**
     * Object key for the add-on.
     */
    ObjectKey: string;

    /**
     * Brief description of the add-on.
     */
    ShortDescription: string;

    /**
     * User or entity that last updated the add-on.
     */
    UpdatedBy: string;

    /**
     * Unique identifier for the add-on's use case.
     */
    Usecase: string;

    /**
     * Version of the installed add-on.
     */
    Version: string;

    /**
     * Indicates if the add-on has been configured ("1" for true, otherwise false).
     */
    HasConfigured: string;
}
```

## Usage

```tsx
import { IInstalledAddOn } from 'uxp/components';
```

