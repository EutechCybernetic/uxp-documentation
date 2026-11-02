# DocumentViewer


Shows a PDF file in the page with pdf.js. The pages scroll one after the other. The viewer tracks the current
page, which is the page that takes up most of the view, and reports it with onPageChange. Use it to show
documents and slides and to follow how far the user has read.

The toolbar has previous and next page, a page number box and zoom controls. The pdf.js library loads the first
time a viewer is shown, so pages that do not use it do not download it.

Pages are drawn as images. Text cannot be selected and links in the PDF do not open.



## Installation

```tsx
import { DocumentViewer } from 'uxp/components';
```

## Signature

```tsx
const DocumentViewer: React.FunctionComponent<IDocumentViewerProps>
```

## Examples

```tsx
<DocumentViewer
    src="https://raw.githubusercontent.com/mozilla/pdf.js/master/web/compressed.tracemonkey-pldi-09.pdf"
    height={600}
/>
```

```tsx
<DocumentViewer
    src="https://raw.githubusercontent.com/mozilla/pdf.js/master/web/compressed.tracemonkey-pldi-09.pdf"
    page={3}
    zoom="fit-page"
    onLoad={({ totalPages }) => console.log('Pages', totalPages)}
    onPageChange={(page, totalPages) => console.log(page, 'of', totalPages)}
    onError={(message) => console.error(message)}
/>
```

```tsx
<DocumentViewer
    src="https://raw.githubusercontent.com/mozilla/pdf.js/master/web/compressed.tracemonkey-pldi-09.pdf"
    showToolbar={false}
    zoom={1}
    height="100%"
/>
```

## Live preview

[Open DocumentViewer in the playground →](<https://story.uxp.iviva.com/?path=/docs/data-display-documentviewer--docs>)

### Variants

- [Example 1](<https://story.uxp.iviva.com/?path=/docs/data-display-documentviewer--docs&args=height%3A600&props=%7B%22src%22%3A%22https%3A%2F%2Fraw.githubusercontent.com%2Fmozilla%2Fpdf.js%2Fmaster%2Fweb%2Fcompressed.tracemonkey-pldi-09.pdf%22%7D>)
- [Example 2](<https://story.uxp.iviva.com/?path=/docs/data-display-documentviewer--docs&args=page%3A3%3Bzoom%3Afit-page&props=%7B%22src%22%3A%22https%3A%2F%2Fraw.githubusercontent.com%2Fmozilla%2Fpdf.js%2Fmaster%2Fweb%2Fcompressed.tracemonkey-pldi-09.pdf%22%7D>)
- [Example 3](<https://story.uxp.iviva.com/?path=/docs/data-display-documentviewer--docs&args=showToolbar%3A%21false%3Bzoom%3A1&props=%7B%22src%22%3A%22https%3A%2F%2Fraw.githubusercontent.com%2Fmozilla%2Fpdf.js%2Fmaster%2Fweb%2Fcompressed.tracemonkey-pldi-09.pdf%22%2C%22height%22%3A%22100%25%22%7D>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|src|string|Yes|-|"https://raw.githubusercontent.com/mozilla/pdf.js/master/web/compressed.tracemo…|
|page|number|No|1|-|
|zoom|[DocumentViewerZoom](../types/DocumentViewerZoom.md)|No|"fit-width"|-|
|showToolbar|boolean|No|true|-|
|height|number \| string|No|"46.1538rem" (600px at 1440 wide, grows with the screen)|-|
|onLoad|(info: { totalPages: number }) => void|No|-|onLoad={({ totalPages }) => console.log('Pages', totalPages)}|
|onPageChange|(page: number, totalPages: number) => void|No|-|onPageChange={(page, totalPages) => console.log(page, 'of', totalPages)}|
|onError|(message: string) => void|No|-|onError={(message) => console.error(message)}|
|className|string|No|-|-|

## Related Types

- [IDocumentViewerProps](../types/IDocumentViewerProps.md)
- [DocumentViewerZoom](../types/DocumentViewerZoom.md)

