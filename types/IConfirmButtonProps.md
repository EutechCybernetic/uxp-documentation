# IConfirmButtonProps

## Definition

```tsx
interface IConfirmButtonProps {
    /**
     * The caption for the button
     */
    title: string,

    /**
     * Casing applied to the label. Defaults to 'sentence'.
     */
    textMode?: ButtonComponentTextMode,

    /**
     * The url of an icon to show on the button
     */
    icon?: string,

    /**
     * Any extra css classes to add to the button 
     */
    className?: string,

    /**
     * The callback that gets invoked when the confirm button is clicked
     */
    onConfirm: () => Promise<any>,
    /**
     * The callback that gets invoked when the cancel button is clicked
     */
    onCancel: () => void,

    /**
     * Set this to `true` to show the button in its 'loading...' state.
     * In this state, an animation will be shown indicating that work is going on and the user will not be able to click the button
     */
    loading?: boolean,

    /**
     * The caption to show on the button when its in loading state
     */
    loadingTitle?: string,
    active?: boolean,
    disabled?: boolean
}
```

## Usage

```tsx
import { IConfirmButtonProps } from 'uxp/components';
```

## Related Types

- [ButtonComponentTextMode](../types/ButtonComponentTextMode.md)

