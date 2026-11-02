# ChatUploadFile


Uploads one queued file while the user writes. Call `onProgress` with 0 to 100.
What it returns is passed to `onSend` in `uploads`. Throwing marks the file as failed.


## Definition

```tsx
export type ChatUploadFile = (file: File, onProgress: (percent: number) => void) => Promise<unknown>;
```

## Usage

```tsx
import { ChatUploadFile } from 'uxp/components';
```

