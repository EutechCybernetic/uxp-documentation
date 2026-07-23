# lookupComponent

Look up a registered component by any ID form (3-part or 2-part).
Normalizes the search ID once, then compares against pre-computed ComponentDefinition.normalizedId.



## Installation

```tsx
import { lookupComponent } from 'uxp/components';
```

## Signature

```tsx
function lookupComponent(id: string): ComponentDefinition | null
```

## Examples

```tsx
lookupComponent('iviva-system-app/widget/chart');
lookupComponent('iviva-system-app/ui/general-settings-view');
lookupComponent('iviva-system-app/component/my-comp');
```

