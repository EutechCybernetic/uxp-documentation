# Page Context

Tell the shell what the user is looking at, as plain text. Panels in the header sidebar can read it, for example to send it with a request.

---

## What the shell knows by itself

Every page has a baseline. You do not write any code for it.

- App id
- Page title
- URL path
- Path parameters
- Query parameters, for example `objectKey` and `dt`
- Dashboard id and title, on a dashboard

The shell does not know your search text, your filters or the record on screen. Add those with `usePageContext`.

---

## Add what is on screen

Call `usePageContext` with a short `label` and a plain `text`.

- The entry is added when the component mounts.
- It is updated when `label` or `text` change.
- It is removed when the component unmounts.
- Pass `null` or `false` to add nothing.
- Several parts of a page can each add one, for example a list and its details panel.
- Text is cut at 4,000 characters per entry.

```tsx
import { usePageContext } from 'uxp/components';

const WorkOrderDetails: React.FC<{ workOrder: WorkOrder | null }> = ({ workOrder }) => {
    usePageContext(workOrder && {
        label: `Work order ${workOrder.ID}`,
        text: [
            `Work order: ${workOrder.ID}`,
            `Title: ${workOrder.Title}`,
            `Status: ${workOrder.Status}`,
            `Starts: ${workOrder.StartDate}`,
        ].join('\n'),
    });
    // ...
};
```

Write the text the way you would explain the screen to a colleague. Keep only the fields that matter.

---

## Lists add it for you

`ObjectSearchComponent` adds an entry by default. It holds:

- The list name and the selected view
- The search text and the filters
- The total, and the first 10 rows as CSV in the visible columns. Columns empty in all 10 rows are left out.

```text
List: Active Locations
Filters: {"Hidden":"0"}
Showing 10 of 25:
Name,Type,Status
Alias Test,Site,0
"Colombo, West",Site,0
```

Turn it off, or write your own text, with the `pageContext` prop.

```tsx
// Off
<ObjectSearchComponent pageContext={false} ... />

// Your own text
<ObjectSearchComponent
    pageContext={(details, rows) => ({
        label: `Meters · ${rows.length}`,
        text: rows.slice(0, 10).map(r => `${r.MeterID}: ${r.LastReading} ${r.Unit}`).join('\n'),
    })}
    ...
/>
```

---

## Read it

Header sidebar panels read the value with `usePageContextValue`. It is empty outside the shell.

```tsx
import { usePageContextValue } from 'uxp/components';

const { page, entries } = usePageContextValue();
const summary = entries.map(e => e.text).join('\n\n') || page?.title;
```

---

## Do not put secrets in it

A panel can send the text to another service. Leave out passwords, keys and personal data the user would not want sent.
