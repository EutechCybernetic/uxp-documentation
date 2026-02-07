# undefined

Union type of all execution configuration types.
Use this type when accepting any execution configuration.


## Definition

```tsx
export type ExecuteConfig =
    | ExecuteActionConfig
    | ExecuteServiceConfig
    | ExecuteMicroserviceConfig
    | ExecuteAPIConfig
    | ExecuteQueryConfig
    | ExecuteCollectionConfig;
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

