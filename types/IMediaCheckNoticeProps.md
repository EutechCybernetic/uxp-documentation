# IMediaCheckNoticeProps


MediaCheckNotice component props


## Definition

```tsx
interface IMediaCheckNoticeProps {
    /**
     * The check's message: line 1 is the problem, line 2 (after a newline) a hint.
     */
    message: string

    /**
     * A button shown in the block, e.g. "Crop and resize"
     */
    action?: React.ReactNode
}
```

## Usage

```tsx
import { IMediaCheckNoticeProps } from 'uxp/components';
```

