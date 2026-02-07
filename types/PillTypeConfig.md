# PillTypeConfig


Configuration for different pill types, defining how pills should be rendered


## Definition

```tsx
export interface PillTypeConfig {
    /** Index in the split value to use for rendering */
    valueIndex: number;
    /** Custom function to render the pill value */
    renderValue?: (value: string, allFields: PillOption[]) => string | JSX.Element;
    /** Icon to display - can be string or function that returns icon based on value */
    icon: string | ((val: string) => string);
    /** Text color - can be string or function that returns color based on value */
    textColor: string | ((val: string) => string);
    /** Background color - can be string or function that returns color based on value */
    backgroundColor: string | ((val: string) => string);
}
```

## Usage

```tsx
import { PillTypeConfig } from 'uxp/components';
```

## Related Types

- [PillOption](../types/PillOption.md)

