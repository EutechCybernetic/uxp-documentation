# IThemeProps

## Definition

```tsx
export interface IThemeProps {

    /**
     * Optional logo URL — not a CSS variable.
     * Accessed via context.theme.logo; skipped in the CSS var loop.
     */
    logo?: string,

    /** colors */
    /**
     * Primary color for the layout
     * Header and sidebar will use these colors
     * Also based on the design (figma) in some otherplaces also we have this color (EX: count in views dropdown list and add new custom view button)
     */
    portalHeaderBGColor: string,
    portalHeaderTextColor: string,
    portalSidebarHoverBGColor: string,
    portalSidebarSelectedBGColor: string,

    /**
     * Navigation child items (dropdown menus)
     * Colors for child navigation links that appear in dropdown menus
     * These are separate from main sidebar colors as they appear on different backgrounds
     */
    navChildHoverBGColor: string,
    navChildHoverTextColor: string,
    navChildSelectedBGColor: string,
    navChildSelectedTextColor: string,

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
    tableSelectedRowBGColor: string,

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

    successButtonBGColor: string,
    successButtonTextColor: string,
    successButtonBorderColor: string,
    successButtonHoverBGColor: string,
    successButtonHoverTextColor: string,
    successButtonHoverBorderColor: string,
    successButtonActiveBGColor: string,
    successButtonActiveTextColor: string,
    successButtonActiveBorderColor: string,

    warningButtonBGColor: string,
    warningButtonTextColor: string,
    warningButtonBorderColor: string,
    warningButtonHoverBGColor: string,
    warningButtonHoverTextColor: string,
    warningButtonHoverBorderColor: string,
    warningButtonActiveBGColor: string,
    warningButtonActiveTextColor: string,
    warningButtonActiveBorderColor: string,

    infoButtonBGColor: string,
    infoButtonTextColor: string,
    infoButtonBorderColor: string,
    infoButtonHoverBGColor: string,
    infoButtonHoverTextColor: string,
    infoButtonHoverBorderColor: string,
    infoButtonActiveBGColor: string,
    infoButtonActiveTextColor: string,
    infoButtonActiveBorderColor: string,

    /**
     * Link colors
     */
    linkColor: string,
    linkHoverColor: string,
    linkVisitedColor: string,
    linkActiveColor: string,

    /**
     * Focus ring colors
     */
    focusRingColor: string,
    focusRingShadowColor: string,

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
    inputFocusBGColor: string,
    inputFocusTextColor: string,
    inputFocusBorderColor: string,
    inputHoverBGColor: string,
    inputHoverBorderColor: string,
    inputDisabledBGColor: string,
    inputDisabledTextColor: string,
    inputReadonlyBGColor: string,
    inputReadonlyBorderColor: string,

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


    // status - unified system with BG, Text, and Border for all statuses
    newStatusBGColor: string,
    newStatusTextColor: string,
    newStatusBorderColor: string,
    modifiedStatusBGColor: string,
    modifiedStatusTextColor: string,
    modifiedStatusBorderColor: string,
    onGoingStatusBGColor: string,
    onGoingStatusTextColor: string,
    onGoingStatusBorderColor: string,
    deletedStatusBGColor: string,
    deletedStatusTextColor: string,
    deletedStatusBorderColor: string,

    activeStatusBGColor: string,
    activeStatusTextColor: string,
    activeStatusBorderColor: string,
    inactiveStatusBGColor: string,
    inactiveStatusTextColor: string,
    inactiveStatusBorderColor: string,

    pendingStatusBGColor: string,
    pendingStatusTextColor: string,
    pendingStatusBorderColor: string,
    completedStatusBGColor: string,
    completedStatusTextColor: string,
    completedStatusBorderColor: string,
    approvedStatusBGColor: string,
    approvedStatusTextColor: string,
    approvedStatusBorderColor: string,
    rejectedStatusBGColor: string,
    rejectedStatusTextColor: string,
    rejectedStatusBorderColor: string,
    onHoldStatusBGColor: string,
    onHoldStatusTextColor: string,
    onHoldStatusBorderColor: string,
    parkedStatusBGColor: string,
    parkedStatusTextColor: string,
    parkedStatusBorderColor: string,

    warningStatusBGColor: string,
    warningStatusTextColor: string,
    warningStatusBorderColor: string,

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

    // Loader/Skeleton colors
    loaderPrimaryColor: string,
    loaderSecondaryColor: string,
    loaderBackgroundColor: string,

    // Typography weights
    fontWeightLight: string,
    fontWeightRegular: string,
    fontWeightMedium: string,
    fontWeightSemibold: string,
    fontWeightBold: string,
    fontWeightBlack: string,

}
```

## Usage

```tsx
import { IThemeProps } from 'uxp/components';
```

