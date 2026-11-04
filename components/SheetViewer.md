# SheetViewer


Shows the first sheet of a CSV or spreadsheet file (csv, xlsx, xls, ods) as a table. The first row is
the header. Read in the browser with SheetJS, which loads only when a sheet opens.



## Installation

```tsx
import { SheetViewer } from 'uxp/components';
```

## Signature

```tsx
const SheetViewer: React.FunctionComponent<ISheetViewerProps>
```

## Examples

```tsx
tsx
<SheetViewer src="https://example.com/files/meters.csv" />
```

## Live preview

[Open SheetViewer in the playground →](<https://story.uxp.iviva.com/?path=/docs/other-sheetviewer--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/other-sheetviewer--docs&props=%7B%22src%22%3A%22https%3A%2F%2Fexample.com%2Ffiles%2Fmeters.csv%22%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|src|string|Yes|-|"https://example.com/files/meters.csv"|
|maxRows|number|No|200|-|
|className|string|No|-|-|

## Related Types

- [ISheetViewerProps](../types/ISheetViewerProps.md)

