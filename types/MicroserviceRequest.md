# MicroserviceRequest

A microservice request for executeMicroServiceSafe: service, route and method.
executeConfig takes ExecuteMicroserviceConfig instead.


## Definition

```tsx
export interface MicroserviceRequest {
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
import { MicroserviceRequest } from 'uxp/components';
```

