# ObjectDetailsPanelBaseProps


Base props for the ObjectDetailsPanel, defining its structure and content.
Uses discriminated union to prevent mixing old and new API.


## Definition

```tsx
export type ObjectDetailsPanelBaseProps = {
    /**
     * Title content for the panel. Can be:
     * - DetailsContent: Static content or function returning React.ReactNode
     * - ObjectDetailsPanelHeaderProps: Configuration for the default header component
     * - Function returning ObjectDetailsPanelHeaderProps: Dynamic header based on row data
     */
    title: DetailsContent | ObjectDetailsPanelHeaderProps | ((item: RowData, loading?: boolean) => ObjectDetailsPanelHeaderProps);

    /**
     * Optional other details content, either static or a function of row data.
     */
    otherDetails?: DetailsContent;

    /**
     * Additional details tabs to display, each with its own content.
     */
    additionlDetails?: AdditionaDetails[];

    /**
     * Whether to show a close button on the panel. Defaults to true.
     */
    showCloseButton?: boolean;

    /**
     * Callback function triggered when the panel is closed.
     */
    onClose?: () => void;

    /**
     * If true, appends selected tab ID to URL as 'dt' parameter for deep linking and reload persistence.
     */
    appendToURL?: boolean;

    /**
     * Custom URL parameter names for tab navigation. Useful for nested panels to avoid param conflicts.
     */
    urlParams?: {
        /**
         * Parameter name for details tab (default: 'dt')
         */
        detailsTab?: string;

        /**
         * Parameter name for additional details tab (default: 'ad')
         */
        additionalDetailsTab?: string;
    };
} & (
        // New API: Use tabs (cannot use old toolbarItems/generalDetails)
        | {
            /**
             * Tab configuration for multi-tab panels. Each tab has its own toolbar and details.
             * If only one tab is provided, the tab navigation UI is hidden for backward compatibility.
             */
            tabs: DetailsPanelTab[];
            toolbarItems?: never;
            generalDetails?: never;
        }
        // Old API: Use toolbarItems/generalDetails (cannot use tabs)
        | {
            tabs?: never;
            /**
             * Toolbar items to display in the panel, split into left and right sections.
             * Can be static or a function that returns toolbar items based on row data.
             */
            toolbarItems?: {
                left: ToolbarItem[];
                right: ToolbarItem[];
            } | ((item: RowData) => {
                left: ToolbarItem[];
                right: ToolbarItem[];
            });
            /**
             * Main details content, either a static node, a function returning ObjectInfoCardProps, or a function of row data.
             */
            generalDetails?: ((item: RowData) => ObjectInfoCardProps) | DetailsContent;
        }
    );
```

## Usage

```tsx
import { ObjectDetailsPanelBaseProps } from 'uxp/components';
```

