# URLParamConfig


Configuration for URL parameter names used by ObjectSearchComponent.


## Definition

```tsx
export interface URLParamConfig {
    /**
     * Parameter name for selected row key (default: 'objectKey')
     */
    key?: string;

    /**
     * Parameter name for details tab (default: 'dt')
     */
    detailsTab?: string;

    /**
     * Parameter name for additional details tab (default: 'ad')
     */
    additionalDetailsTab?: string;

    /**
     * Parameter name for the nameField value (default: 'objectID').
     * Only written to the URL when the OSC's `nameField` prop is set.
     */
    name?: string;

    /**
     * Parameter name for the typeField value (default: 'objectType').
     * Only written to the URL when the OSC's `typeField` prop is set.
     */
    type?: string;
}
```

## Usage

```tsx
import { URLParamConfig } from 'uxp/components';
```

