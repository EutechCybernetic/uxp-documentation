# Touch: tap, hold, swipe and drag

Every uxp component follows the same touch rules. The rules follow the input, not the screen size. They also apply to tablets held sideways.

## The rules

| Gesture | What it does | Where |
|---|---|---|
| **Tap** | The element's action, same as a click | Everything |
| **Press and hold** (half a second) | An icon-only button shows its label. A list row starts selecting. | Icons, tooltips, list rows |
| **Swipe left** | The item's actions, in a sheet (also behind a **⋯** when there are two or more) | List rows, tree nodes, saved views, `SwipeActions` |
| **Hold, then drag** | Moves the item | Sortable lists, tables, trees |
| **Drag down** | Closes the sheet | Sheets |
| **Swipe sideways** | Dismisses the toast | Toasts (phones) |
| **Swipe up** | Dismisses every toast | The toast stack (phones) |

- A tap never opens a hover tooltip or leaves one stuck open.
- After a hold or a swipe, the item does not also open.
- A finger that moves is scrolling. It never starts a hold or a drag.
- With a mouse, nothing changes: hover tooltips and hover menus work as before.

## Labels on icon-only buttons

A phone has no hover, so a `title` hint never shows there. Press and hold shows it instead.

**Give every icon-only button a label.**

```tsx
<IconButton icon="phr trash" tooltip="Delete" onClick={remove} />
```

- `tooltip`: the hover hint on the web, and the label on touch.
- `ariaLabel`: the label on touch and for screen readers, with no hover hint on the web.
- `IconButton` with a `type` (`close`, `delete`, `edit`, `search`, `filter`, …) has a label already.

Any button, link or `role="button"` element with a `title` or `aria-label` and no visible text shows its label on hold. You need no code for it. Text with a `title` (a cut-off value) shows nothing on hold. A disabled button shows no label.

The `Tooltip` component works the same way: hover with a mouse, press and hold with a finger.

## Item actions: `SwipeActions`

Actions a mouse reveals on hover (a copy button, edit and delete icons) need another way on touch. Wrap the item in `SwipeActions`:

```tsx
<SwipeActions title={message.subject} actions={<>
    <IconButton icon="phr copy" tooltip="Copy" onClick={copy} />
    <IconButton icon="phr pencil-simple" tooltip="Edit" onClick={edit} />
    <IconButton icon="phr trash" tooltip="Delete" variant="danger" onClick={remove} />
</>}>
    <MessageBody message={message} />
</SwipeActions>
```

| Actions | Touch | Mouse |
|---|---|---|
| One | Always shown | Shown on hover |
| Two or more | A **⋯** button. Tapping it, or swiping the item left, opens a sheet with one labelled row per action. | Shown on hover |

- `title` is the sheet's title: the item's name.
- Give each button an icon and a label (`title` or `tooltip`). The label is the row's text in the sheet.
- Tree nodes and list rows follow the same rule by themselves.
- `ActionsSheet` is the sheet on its own, for your own trigger: `<ActionsSheet isOpen onClose title>buttons</ActionsSheet>`.

**A custom layout that can't use `SwipeActions`:** show the hover control on touch screens with CSS.

```scss
.myapp_row__copy {
    opacity: 0;

    .myapp_row:hover & {
        opacity: 1;
    }

    // Touch screens have no hover
    @media (pointer: coarse) {
        opacity: 1;
    }
}
```

**In code**, a hover effect must ignore the mouse events a tap fakes:

```tsx
import { isFakeMouse } from 'uxp/components';

<div onMouseEnter={() => { if (!isFakeMouse()) setHover(true); }} />
```

## Gestures in your own UI

**Swipe and hold:** use `usePressGesture`. It uses the same timings as the rest of uxp.

```tsx
import { usePressGesture } from 'uxp/components';

const gestures = usePressGesture({ onSwipeLeft: openActions, onLongPress: startSelecting });

<div {...gestures.handlers} onClick={() => { if (gestures.consumeClick()) return; open(); }} />
```

`consumeClick()` is true once after a swipe or a hold. Check it in `onClick`, so the item does not also open.

**Drag and drop** (dnd-kit): use `useDragSensors`. A mouse drags at once, a finger after a short hold, so scrolling never starts a drag.

```tsx
import { useDragSensors } from 'uxp/components';

const sensors = useDragSensors();
<DndContext sensors={sensors}>…</DndContext>
```

Pass `{ keyboard: { coordinateGetter } }` for keyboard dragging.

## Check it

1. Open Chrome device mode at 390 × 844. Touch is on in device mode.
2. Tap each button. Its action runs. No tooltip stays open.
3. Press and hold each icon-only button. Its label shows, and the action does not run.
4. Swipe list rows left. Their actions open.
5. Scroll a sortable list. Nothing moves.
6. At 1440 wide with a mouse, hover works as before.
