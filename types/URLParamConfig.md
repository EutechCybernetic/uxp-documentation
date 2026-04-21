# URLParamConfig


Configuration for URL parameter names used by ObjectSearchComponent.


## Definition

```tsx
export interface URLParamConfig {
    /**
     * Parameter name for selected row key (default: 'key')
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
}
```

## Usage

```tsx
import { URLParamConfig } from 'uxp/components';
```

