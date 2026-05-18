# InputProps

## Definition

```tsx
interface InputProps extends InputSizeProps, InputStateProps {
    /**
     * Input type — text, password, number, or email. Default is 'text'.
     */
    type?: InputType,

    /**
     * The typed text value (controlled).
     */
    value: string,

    /**
     * Called whenever the typed value or a prefix/suffix dropdown selection changes.
     *
     * - `value` — raw typed text (never pre-combined with prefix/suffix)
     * - `prefix` — current prefix dropdown selection, or `undefined` for non-dropdown prefix
     * - `suffix` — current suffix dropdown selection, or `undefined` for non-dropdown suffix
     *
     * @example
     * ```tsx
     * onChange={(val, prefix) => {
     *     setValue(val);
     *     if (prefix !== undefined) setCurrency(prefix);
     * }}
     * ```
     */
    onChange: (value: string, prefix?: string, suffix?: string) => void,

    onFocus?: () => void,
    onBlur?: (value: string) => void,
    onKeyDown?: (e: React.KeyboardEvent<HTMLInputElement>, val: string) => void,

    className?: string,

    /**
     * Left-side slot. Accepts:
     * - `ReactNode` — transparent, no separator (e.g. an icon)
     * - `InputPrefixConfig` — `{ value, showSeparator? }` — opt-in separator
     * - `InputAddonDropdown` — `{ options, selected }` — selectable dropdown with separator
     */
    prefix?: InputPrefixSuffix,

    /**
     * Right-side slot. Same union type as `prefix`.
     */
    suffix?: InputPrefixSuffix,

    inputAttr?: { [key: string]: string | boolean },
    placeholder?: string,
    inline?: boolean,
    style?: React.CSSProperties,
    tabIndex?: number,

    /**
     * Called when the clear (×) button is clicked.
     * If omitted, the button calls `onChange('')` automatically.
     */
    onClear?: () => void,

    /**
     * Hide the clear button entirely (e.g. for internal sub-inputs like Clock or ColorPicker hex field).
     */
    hideClear?: boolean,
}
```

## Usage

```tsx
import { InputProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [InputType](../types/InputType.md)
- [InputPrefixSuffix](../types/InputPrefixSuffix.md)
- [InputPrefixConfig](../types/InputPrefixConfig.md)
- [InputAddonDropdown](../types/InputAddonDropdown.md)
- [InputAddonOption](../types/InputAddonOption.md)

