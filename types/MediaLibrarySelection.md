# undefined


What the media library tree has selected: my top level, one folder (mine or shared),
everything shared with me, or one tag (mine or shared).


## Definition

```tsx
export type MediaLibrarySelection =
    | { kind: 'root' }
    | { kind: 'folder', key: string }
    | { kind: 'shared' }
    | { kind: 'tag', key: string }
```

## Usage

```tsx
import { undefined } from 'uxp/components';
```

