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
    // inputAttr?: any
    /**
     * show hide end of content message
     */
    showEndOfContent?: boolean

    disableSearch?: boolean
}
```

## Usage



```tsx
import {ISelectProps} from 'uxp/components';
```

