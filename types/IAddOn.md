# IAddOn


Interface for an add-on's metadata.


## Definition

```tsx
export interface IAddOn {
    /**
     * Unique identifier for the add-on.
     */
    id: string;

    /**
     * Title of the add-on.
     */
    title: string;

    /**
     * Path to the add-on's thumbnail image.
     */
    thumbnail: string;

    /**
     * Brief description of the add-on.
     */
    shortDescription: string;

    /**
     * Detailed description of the add-on.
     */
    description: string;

    /**
     * Array of image or video URLs for the add-on.
     */
    imagesVideos: string[];

    /**
     * Array of required connectors for the add-on.
     */
    connectorsRequired: string[];

    /**
     * Array of supported models for the add-on.
     */
    models: string[];

    /**
     * Array of tags associated with the add-on.
     */
    tags: string[];

    /**
     * Version of the add-on.
     */
    version: string;

    /**
     * Indicates if the add-on is publicly available.
     */
    public: boolean;

    /**
     * Optional configuration UI settings for the add-on.
     */
    configUI?: { default?: string };
}
```

## Usage

```tsx
import { IAddOn } from 'uxp/components';
```

