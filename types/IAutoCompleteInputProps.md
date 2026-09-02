# IAutoCompleteInputProps

## Definition

```tsx
interface IAutoCompleteInputProps extends InputSizeProps, InputStateProps {
    /**
     * Current text value of the input
     */
    value: string
    /**
     * Called on every keystroke with the new value
     */
    onChange: (val: string) => void
    /**
     * Static list of suggestion strings.
     * Filtered automatically against the current input value.
     * Keyboard navigation (↑ ↓ Enter) is handled internally.
     */
    options?: string[]
    /**
     * Render function that returns fully custom dropdown content.
     * Use when you need more than a plain string list — e.g. rich items or async data.
     * The component opens the dropdown on focus/type; call `ref.current?.close()` to close it after selection.
     *
     * @example
     * ```tsx
     * function renderAutoFill() {
     *   return (
     *     <div>
     *       {results.map((r, i) => (
     *         <div key={i} onClick={() => { onChange(r.name); inputRef.current?.close(); }}>
     *           {r.name}
     *         </div>
     *       ))}
     *     </div>
     *   )
     * }
     *
     * <AutoCompleteInput value={val} onChange={setVal} autoFill={renderAutoFill} ref={inputRef} />
     * ```
     */
    autoFill?: () => JSX.Element
    /**
     * When provided, a clear (×) button is shown inside the input whenever a value is present.
     * Clicking it calls this function — the parent is responsible for clearing the value.
     */
    onClear?: () => void

    /**
     * Additional CSS class name on the outer container
     */
    className?: string
    /**
     * Placeholder text shown when the input is empty
     */
    placeholder?: string
    /**
     * Tab index. Default is 0.
     */
    tabIndex?: number
    /**
     * Optional "add new" affordance rendered as a pinned footer in the
     * suggestion dropdown. Supports two scenarios — see {@link IAddNewValues}:
     *
     * - **Scenario A** (`onAddNewValue`): the button surfaces only when the
     *   typed query has no matches. Resolved value is auto-selected.
     * - **Scenario B** (`alwaysShow: true` + `onClick`): the button is
     *   always visible at the bottom of the dropdown; the host owns the
     *   side-effect (e.g. opening a slide-in form, then refreshing the
     *   options list via an event bus).
     *
     * @example
     * ```tsx
     * // Scenario A — create from typed text on no-match
     * <AutoCompleteInput
     *   value={val} onChange={setVal} options={countries}
     *   addNewValues={{
     *     enable: true, title: '+ Add country', loadingTitle: 'Saving…',
     *     onAddNewValue: async (typed) => {
     *       const created = await api.create(typed);
     *       return created.name;
     *     },
     *   }}
     * />
     * ```
     *
     * @example
     * ```tsx
     * // Scenario B — always-visible launcher button
     * <AutoCompleteInput
     *   value={val} onChange={setVal} options={accounts}
     *   addNewValues={{
     *     enable: true, title: '+ Add Account', alwaysShow: true,
     *     onClick: () => setAddFormOpen(true),
     *   }}
     * />
     * ```
     */
    addNewValues?: IAddNewValues
}
```

## Usage

```tsx
import { IAutoCompleteInputProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IAddNewValues](../types/IAddNewValues.md)

