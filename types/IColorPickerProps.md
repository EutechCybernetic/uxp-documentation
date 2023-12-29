# IColorPickerProps









```tsx
interface IColorPickerProps {
    /**
     *  default color 
    */
    color: string,
    /**
     * callback on select a color
     */
    onChange: (color: string) => void,
    /**
     * picker position.  default is left
     */
    position?: IColorPickerPosition,
    /**
     * class name for additional styles
     */
    className?: string,
    /**
     * close the picker on select a color 
     * default is true
     */
    closeOnSelect?: boolean,
    /**
     * change display format
     */
    displayFormat?: IColorTypes
    /**
     * change return format
     */
    returnFormat?: IColorTypes
}
```

## Usage



```tsx
import {IColorPickerProps} from 'uxp/components';
```

