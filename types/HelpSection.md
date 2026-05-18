# HelpSection


A single section in the HelpPopover content — a bold heading with a description body.


## Definition

```tsx
export interface HelpSection {
    /** Bold heading text */
    heading: string;
    /** Description text or any React node */
    body: string | React.ReactNode;
}
```

## Usage

```tsx
import { HelpSection } from 'uxp/components';
```

