# IWidgetContainerBlockProps








```tsx
interface IWidgetContainerBlockProps {
    widgets: IWidgetInstance[],
    editDashboard: boolean,
    onChangeDashboard: any,
    canEditDashboard: boolean,
    canManageWidgetsAndSettings: boolean,
    openMenu: () => void
    toolbarItems: IToolbarItem[];
    minWidth?: number,
    numberOfColumns?: number,
    onGridResize?: (width: number, height: number, cellWidth: number, margin: [number, number]) => void,
    margin?: number,
    padding?: number
    // to hide the default edit toolbar that comes in edit mode in the dashbaords 
    hideDefaultEditToolbar?: boolean,
    onWidgetPropsChange?: (id: string, props: any) => void,
    onResizeStart?: () => void
    onResizeEnd?: () => void
}
```

## Usage



```tsx
import {IWidgetContainerBlockProps} from 'uxp/components';
```

