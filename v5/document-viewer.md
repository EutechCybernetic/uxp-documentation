# DocumentViewer

`DocumentViewer` shows a PDF file inside your view. It uses pdf.js. The pages scroll one after the other. The viewer tracks the current page and tells you when it changes. Use it for documents, slides saved as PDF, and anything where you need to know how far the user has read.

pdf.js is not part of the main uxp bundle. It downloads the first time a viewer is shown.

---

## Step 1: Basic Usage

`src` is the only required prop. Give the viewer a height. A number is pixels. Any CSS height works inside a parent that has a height.

```tsx
import React from "react";
import { DocumentViewer } from "uxp/components";

const ManualView: React.FC = () => (
    <DocumentViewer src="/content/manuals/handbook.pdf" height={600} />
);

export default ManualView;
```

The file must come from the same origin, or from a server that allows the request (CORS).

---

## Step 2: Tracking Progress

`onLoad` gives the number of pages. `onPageChange` gives the current page and the total each time the current page changes. It fires once per change.

```tsx
const [progress, setProgress] = useState({ page: 1, total: 0 });

<DocumentViewer
    src={url}
    onLoad={({ totalPages }) => setProgress({ page: 1, total: totalPages })}
    onPageChange={(page, totalPages) => setProgress({ page, total: totalPages })}
/>
```

- The current page is the page that takes up most of the view.
- At the end of the document the current page is the last page, even when that page is short.
- `onPageChange` does not fire for the first page. `onLoad` tells you the document is open at page 1.

---

## Step 3: Opening at a Page

`page` sets the page to show. The viewer scrolls to it when the document loads and each time the value changes.

```tsx
const [page, setPage] = useState(savedPage);

<DocumentViewer
    src={url}
    page={page}
    onPageChange={(p) => setPage(p)}
/>
```

Passing back the page from `onPageChange` does not move the view. The controlled pattern above is safe.

---

## Step 4: Zoom and Toolbar

| `zoom` | Result |
|---|---|
| `"fit-width"` (default) | Pages fill the width of the viewer. |
| `"fit-page"` | A whole page fits in the view. |
| a number | A scale factor. `1` is 100%. Range 0.25 to 4. |

The user can change the zoom from the toolbar. A new `zoom` value replaces the user's choice.

The toolbar has previous and next page, a page number box, zoom out, zoom in, fit width and fit page. Hide it with `showToolbar={false}`.

---

## Step 5: Errors

`onError` receives a message when the document cannot be loaded. Causes include a wrong URL, a server error, a blocked cross-origin request and a file that is not a PDF. The viewer also shows "The document could not be loaded." with the message.

```tsx
<DocumentViewer src={url} onError={(message) => toast.error(message)} />
```

---

## Notes

- Pages are drawn as images. Text cannot be selected. Links inside the PDF do not open.
- Only pages near the view are drawn. Long documents stay light.
- The colours follow the theme.
