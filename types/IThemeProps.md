# IThemeProps

## Definition

```tsx
export interface IThemeProps {

    /** colors */
    /**
     * Primary color for the layout
     * Header and sidebar will use these colors
     * Also based on the design (figma) in some otherplaces also we have this color (EX: count in views dropdown list and add new custom view button)
     */
    portalHeaderBGColor: string,
    portalHeaderTextColor: string,

    /**
     * background color of the page
     */
    portalBGColor: string,

    /**
     * accent color
     */
    accentColor: string,


    /**
     * border color
     */
    borderColor: string,
    /**
     * box shadow color
     */
    boxShadowColor: string,

    /**
     * for disabled items
     */
    disabledBGColor: string,
    disabledTextColor: string,

    /**
     * for selected items
     */
    selectedBGColor: string
    selectedTextColor: string

    /**
     * for highlighting items (like on mouse over)
     */
    highlightBGColor: string,
    highlightTextColor: string,


    /**
     * these are the colors for content
     */
    primaryBGColor: string,
    primaryTextColor: string,
    secondaryBGColor: string,
    secondaryTextColor: string,

    // item selection
    selectedItemBGColor: string,

    // table
    tableHeaderBGColor: string,

    /**
     * buttons
     *  */
    primaryButtonBGColor: string,
    primaryButtonTextColor: string,
    primaryButtonBorderColor: string,
    primaryButtonHoverBGColor: string,
    primaryButtonHoverTextColor: string,
    primaryButtonHoverBorderColor: string
    primaryButtonActiveBGColor: string,
    primaryButtonActiveTextColor: string
    primaryButtonActiveBorderColor: string

    secondaryButtonBGColor: string,
    secondaryButtonTextColor: string,
    secondaryButtonBorderColor: string,
    secondaryButtonHoverBGColor: string,
    secondaryButtonHoverTextColor: string,
    secondaryButtonHoverBorderColor: string,
    secondaryButtonActiveBGColor: string,
    secondaryButtonActiveTextColor: string
    secondaryButtonActiveBorderColor: string,

    dangerButtonBGColor: string,
    dangerButtonTextColor: string,
    dangerButtonBorderColor: string,
    dangerButtonHoverBGColor: string,
    dangerButtonHoverTextColor: string,
    dangerButtonHoverBorderColor: string,
    dangerButtonActiveBGColor: string,
    dangerButtonActiveTextColor: string
    dangerButtonActiveBorderColor: string,

    inputBGColor: string,
    inputTextColor: string,
    inputBorderColor: string,
    inputActiveBGColor: string,
    inputActiveTextColor: string,
    inputActiveBorderColor: string,
    inputValidBGColor: string
    inputValidTextColor: string
    inputValidBorderColor: string
    inputInvalidBGColor: string
    inputInvalidTextColor: string
    inputInvalidBorderColor: string

    /**
     * Toast notifications
     *  */
    toastSuccessBGColor: string,
    toastSuccessTextColor: string,
    toastErrorBGColor: string,
    toastErrorTextColor: string,
    toastWarningBGColor: string,
    toastWarningTextColor: string,
    toastInfoBGColor: string,
    toastInfoTextColor: string,

    /**
     * Alerts
     *  */
    alertSuccessBGColor: string,
    alertSuccessBorderColor: string,
    alertSuccessTextColor: string,
    alertErrorBGColor: string,
    alertErrorBorderColor: string,
    alertErrorTextColor: string,
    alertWarningBGColor: string,
    alertWarningBorderColor: string,
    alertWarningTextColor: string,
    alertInfoBGColor: string,
    alertInfoBorderColor: string,
    alertInfoTextColor: string,

    alertCancelButtonBGColor: string,
    alertCancelButtonHoverBGColor: string,
    alertCancelButtonTextColor: string,

    alertConfirmButtonBGColor: string,
    alertConfirmButtonHoverBGColor: string,
    alertConfirmButtonTextColor: string,

    alertSuccessConfirmButtonBGColor: string,
    alertSuccessConfirmButtonHoverBGColor: string,
    alertSuccessConfirmButtonTextColor: string,

    alertErrorConfirmButtonBGColor: string,
    alertErrorConfirmButtonHoverBGColor: string,
    alertErrorConfirmButtonTextColor: string

    alertInfoConfirmButtonBGColor: string,
    alertInfoConfirmButtonHoverBGColor: string,
    alertInfoConfirmButtonTextColor: string,

    alertWarningConfirmButtonBGColor: string,
    alertWarningConfirmButtonHoverBGColor: string,
    alertWarningConfirmButtonTextColor: string

    badgeBGColor: string,
    badgeTextColor: string,


    //lists
    secondaryRowColor: string,


    // status
    newStatsuBGColor: string,
    newStatusTextColor: string,
    modifiedStatsuBGColor: string,
    modifiedStatusTextColor: string,
    onGoingStatsuBGColor: string,
    onGoingStatusTextColor: string,
    deletedStatsuBGColor: string,
    deletedStatusTextColor: string,

    activeStatusBGColor: string,
    activeStatusTextColor: string,
    inactiveStatusBGColor: string,
    inactiveStatusTextColor: string,

    pendingStatusColor: string,
    onGoingStatusColor: string,
    completedStatusColor: string,
    approvedStatusColor: string,
    rejectedStatusColor: string,
    onHoldStatusColor: string,
    parkedStatusColor: string,

    // priority
    lowPriorityColor: string,
    mediumPriorityColor: string,
    highPriorityColor: string,
    urgentPriorityColor: string,

    // chart colors
    chartColor1: string,
    chartColor2: string,
    chartColor3: string,
    chartColor4: string,
    chartColor5: string,
    chartColor6: string,
    chartColor7: string,
    chartColor8: string,
    chartColor9: string,
    chartColor10: string,
    chartColor11: string,
    chartColor12: string,
    chartColor13: string,
    chartColor14: string,
    chartColor15: string,

    // Widget Drawer
    widgetDrawerSidebarBGColor: string,
    widgetDrawerTileBGColor: string,
    widgetDrawerTileBorderColor: string,
    widgetDrawerTileHoverBGColor: string,
    widgetDrawerTileSelectedBGColor: string,
    widgetDrawerBadgeBGColor: string,

}
```

## Usage

```tsx
import { IThemeProps } from 'uxp/components';
```

