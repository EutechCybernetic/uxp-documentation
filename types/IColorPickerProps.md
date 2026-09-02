# IColorPickerProps





## Definition

```tsx
interface IColorPickerProps extends InputSizeProps, InputStateProps {
    /**
     *  default color
    */
    color: string,
    /**
     * callback on select a color
     */
    onChange: (color: string) => void,
    /**
     * class name for additional styles
     */
    className?: string,
    /**
     * change display format
     */
    displayFormat?: IColorTypes
    /**
     * change return format
     */
    returnFormat?: IColorTypes

    /**
     * Text to show when no color is selected
     */
    placeholder?: string

    /**
     * Additional class name for the dropdown container
     */
    dropdownClassname?: string

    /**
     * Maximum width for the dropdown content
     */
    dropdownMaxWidth?: number | string

    /**
     * Minimum width for the dropdown content
     */
    dropdownMinWidth?: number | string

    /**
     * hide the color dot icon
     */
    hideLabels?: boolean

    /**
     * When provided, a clear (×) button is shown whenever a color is selected.
     * Clicking it calls this function — the parent is responsible for clearing the value.
     */
    onClear?: () => void

    /**
     * Picker mode.
     * - `'simple'` (default): the classic colour trigger + palette dropdown. Zero behaviour change.
     * - `'complex'`: the same single trigger + dropdown, but the dropdown gains a tab switcher
     *   with up to three views — palette, theme variables, and presets. The emitted value may
     *   be a colour string OR a `{$.theme.<var>}` expression.
     */
    mode?: 'simple' | 'complex'

    /**
     * Complex mode only: show a presets tab using {@link DEFAULT_PRESETS}
     * (the v4 default colours). Clicking a preset emits the raw hex verbatim.
     */
    enableDefaultPresets?: boolean

    /**
     * Complex mode only: custom preset colours. Implies the presets tab and
     * overrides {@link DEFAULT_PRESETS}. Emitted verbatim on click.
     */
    presets?: string[]

    /**
     * Complex mode only: show the theme-variables tab (a picker of the theme's
     * colour variables). Defaults to `true` in complex mode.
     */
    enableThemeVariables?: boolean

    /**
     * Which view the dropdown opens on. Clamped to the tabs actually available;
     * defaults to `'palette'`. Complex mode honours every value; simple mode has
     * no tabs but honours `'input'` — it opens the typed-colour field instead of
     * the palette. A gradient value always opens on the input regardless.
     */
    defaultTab?: ColorPickerTab

    /**
     * Render the typed-colour field as a multi-line TextArea of this many rows
     * (minimum 5) instead of a single-line input — useful for long values such
     * as CSS gradients. Omitted: the single-line input, unchanged.
     */
    inputRows?: number
}
```

## Usage

```tsx
import { IColorPickerProps } from 'uxp/components';
```

## Related Types

- [InputSizeProps](../types/InputSizeProps.md)
- [InputStateProps](../types/InputStateProps.md)
- [IColorTypes](../types/IColorTypes.md)
- [ColorPickerTab](../types/ColorPickerTab.md)

