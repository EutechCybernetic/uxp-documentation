# ExecuteMicroserviceConfig

Configuration for microservice execution


## Definition

```tsx
export interface ExecuteMicroserviceConfig {
    serviceName: string;
    route: string;
    method: 'get' | 'post' | 'put' | 'patch' | 'delete';
    params?: any;
    data?: any;
    configurations?: any;
}
```

## Usage

```tsx
import { ExecuteMicroserviceConfig } from 'uxp/components';
```

