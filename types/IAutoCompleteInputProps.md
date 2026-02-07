# IAutoCompleteInputProps

## Definition

```tsx
interface IAutoCompleteInputProps {
    /**
     * value for the 
     */
    value: string
    /**
     * callback on value change
     */
    onChange: (val: string) => void
    /**
     * options to auto generate the dropdown list 
     */
    options?: string[],
    /**
     * render auto complete dropdown 
     */
    autoFill?: () => JSX.Element,
    /**
     * additional class name
     */
    className?: string,
    /**
     * indicate the if the value is valid or not 
     */
    isValid?: boolean,
    /**
     * placeholder 
     */
    placeholder?: string
    /**
     * this will be used to bind the keybaord inputs. 
     * once you add the class you will be able to navigate trhough the options using arrow keys (up and down) 
     * you need to add the same classname to the options 
     * 
     * default is 'uxp-select-option-container'
     * you can use the default class in the drop down option and you will get the default styles 
     * <div classname="uxp-select-option-container" ...> a</div>
     * 
     * if you pass a custom class name you need write some styles to indicate the selected items 
     * 
     * in styles (.scss file)
     * --------------------
     * .<custom-class-name> {
     *   &.highlighted {
     *          background-color: #52c4c94a;
     *          color: #424242; 
     *  }
     * }
     * 
     * @example 
     * ```
     * function renderAutoFill() {
     * return <div>
     *      <div classname="custom-class-name" ...> a</div>
     *      <div classname="custom-class-name" ...> b</div>
     *      <div classname="custom-class-name" ...> c</div>
     * </div>
     * }
     * <AtutoCompleteInput 
     * ...
     * optionClassName={'custom-class-name'}
     * autoFill={renderAutoFill()}
     * />
     * ```
     */
    optionClassName?: string
    /**
     * tab index. default is 0
     */
    tabIndex?: number
}
```

## Usage

```tsx
import { IAutoCompleteInputProps } from 'uxp/components';
```

