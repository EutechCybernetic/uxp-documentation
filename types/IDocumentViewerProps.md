# IDocumentViewerProps

## Definition

```tsx
interface IDocumentViewerProps {
    /**
     * The URL of the PDF file. The server must allow the request from this page (same origin or CORS).
     * @example "https://raw.githubusercontent.com/mozilla/pdf.js/master/web/compressed.tracemonkey-pldi-09.pdf"
     */
    src: string;

    /**
     * The page to show (1 is the first page). The viewer scrolls to it when the document loads and each time
     * this value changes. Passing back the page from onPageChange does not move the view.
     * @default 1
     */
    page?: number;

    /**
     * The starting zoom: a scale factor (1 is 100%), "fit-width" or "fit-page". The user can change it from the
     * toolbar. A new value replaces the user's choice.
     * @default "fit-width"
     */
    zoom?: DocumentViewerZoom;

    /**
     * Show the toolbar with previous and next page, the page number and the zoom controls
     * @default true
     */
    showToolbar?: boolean;

    /**
     * The height of the viewer. A number is pixels. Any CSS height works, for example "100%" inside a sized parent.
     * The pages scroll inside the viewer.
     * @default "46.1538rem" (600px at 1440 wide, grows with the screen)
     */
    height?: number | string;

    /**
     * Called once the document has loaded, with the number of pages
     * @example onLoad={({ totalPages }) => console.log('Pages', totalPages)}
     */
    onLoad?: (info: { totalPages: number }) => void;

    /**
     * Called when the current page changes, once per change. The current page is the page that takes up most of the
     * view. At the end of the document it is the last page.
     * @example onPageChange={(page, totalPages) => console.log(page, 'of', totalPages)}
     */
    onPageChange?: (page: number, totalPages: number) => void;

    /**
     * Called when the document cannot be loaded, for example a wrong URL or a file that is not a PDF
     * @example onError={(message) => console.error(message)}
     */
    onError?: (message: string) => void;

    /**
     * Additional styles
     */
    className?: string;
}
```

## Usage

```tsx
import { IDocumentViewerProps } from 'uxp/components';
```

## Related Types

- [DocumentViewerZoom](../types/DocumentViewerZoom.md)

