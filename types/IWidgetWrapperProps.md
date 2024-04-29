# IWidgetWrapperProps








```tsx
interface IWidgetWrapperProps {
    /**
     * Any extra css class names to add to the widget wrapper
     */
    className?: string,
    cssBreakPoints?: {
        width?: {
            default: string,
            [key: number]: string
        },
        height?: {
            default: string,
            [key: number]: string
        }
    },
    /**
     * this will be used to get the widget props 
     * this will be used to access the name and description of the widget
     */
    instanceId?: string
    /**
     * sample data label
     */
    sampleData?: {
        /**
         * toggle sample data label
         */
        showLabel?: boolean,
        /**
         * this will be shown in the popup 
         */
        description?: string,
        /**
         * this is deprecated - use product ids instead
         * link to buy from spaceworx
         * if not provided button will not be shown
         */
        link?: string,

        /**
         * prouct ids to show on spaceworx
         */
        productIds?: string[]
    }
}
```

## Usage



```tsx
import {IWidgetWrapperProps} from 'uxp/components';
```

