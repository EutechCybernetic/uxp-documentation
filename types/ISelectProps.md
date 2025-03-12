# ISelectProps








```tsx
interface ISelectProps {
    /**
     * List of items to select from. 
     * Each option has a label which is displayed and a value which is what we actually select.
     * also you can pass any object as options, then specify the labelField, valueField props 
     */
    options: IOption[] | any[],
    /**
     * Name of the field you want to display as label
     * If not given default(label) will be used
     */
    labelField?: string,
    /**
     * Name of the field you want to return  as value
     * If not given default(value) will be used
     */
    valueField?: string,
    /**
     * Name if the field to use as icon 
     * if a value is passed icon will be displayed. 
     */
    iconField?: string
    /**
     * The  currently selected value
     */
    selected: string,

    /**
     * Gets called whenever the selection changes. 
     * The value parameter has the newly selected value
     * option parameter has the complete option/ object that you passed
     */
    onChange: (value: string, option?: IOption | any) => void,

    /**
     * Text to show when no value is selected
     */
    placeholder?: string,
    /**
     * Any extra css classes to add to the component
     */
    className?: string,

    /**
     * Set this to false to indicate the field doesn't have a valid value
     */
    isValid?: boolean,

    /**
     * show hide end of content message
     */
    showEndOfContent?: boolean,
    /**
     * A function that will be responsible for rendering each individual option of the list.
     * 
     * @example
     * 
     * ```
     * renderItem={(option,key)=><div>{option.label}</div>}
     * ```
     * 
     * @example
     * ```
     * renderItem={(option,key)=><ItemCard data={item} titleField='label' />}
     * ```
     */
    renderOption?: (item: any, key: number) => JSX.Element,

    /**
      * Option to add a new value if not available. 
      * You can enable this option and handle how you want to save the new item
      */
    addNewValues?: {
        enable: boolean,
        title: string,
        loadingTitle: string,
        onAddNewValue?: (value: string) => Promise<any>
    }
    /**
     * Option to add a classname for the dropdown 
     */
    dropdownClassname?: string
    /**
     * Spacing mode 
     */
    spacingMode?: SpacingMode,

    /**
   * Option to unselect 
   */
    onClear?: () => void

    /**
    * This will replace the content in the dropdown. 
    * If this is enabled, above options (value, onChange , etc) will not work. You have to handle everything 
    * You will need to handle the value and onChange options. 
    * and once you select an option, to close the dropdown, call the closeDropdown function 
    */
    renderCustomDropdownContent?: (closeDropdown: () => void) => React.ReactNode

    /**
     * Option to custom render the placeholder 
     */
    renderPlaceholder?: {
        /**
         * render input as a pill 
         * work with default select dropdown
         */
        renderAsPill?: {
            minWidth?: number,
            maxWidth?: number
        },
        /**
         * for custom renders 
         */
        renderCustomPill?: (onClear: () => void) => React.ReactNode
    }

    dropdownMinWidth?: number,
    dropdownMinHeight?: number
}
```

## Usage



```tsx
import {ISelectProps} from 'uxp/components';
```

