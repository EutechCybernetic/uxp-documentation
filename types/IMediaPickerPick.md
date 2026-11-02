# IMediaPickerPick


A value picked from an existing source (library, gallery, icons, link), handed to the host's
`onPick` before it is committed. `meta` carries the gallery photo's details.


## Definition

```tsx
export interface IMediaPickerPick {
    value: string
    source: MediaPickerSource
    meta?: IGalleryPickMeta
}
```

## Usage

```tsx
import { IMediaPickerPick } from 'uxp/components';
```

## Related Types

- [MediaPickerSource](../types/MediaPickerSource.md)
- [IGalleryPickMeta](../types/IGalleryPickMeta.md)

