# TabComponentStyles




## Definition

```tsx
export interface TabComponentStyles {
    /**
     * alignment of the tabs
     * default -left
     */
    align?: 'center' | 'left' | 'right' | 'fill',
    /**
     * background color of the tab header
     * default - primaryBGColor
     */
    tabHeaderBackgroundColor?: string
    /**
     * height of the tab header 
     * default - 40px
     */
    tabHeaderHeight?: string,
    /**
     * padding of the tab header 
     * default - 0
     */
    tabHeaderPadding?: string
    /**
     * gap between tabs
     * defualt - 0
     */
    tabHeaderGap?: string
    /**
     * padding of the tab
     * default - 15px 20px
     */
    tabPadding?: string
    /**
     * border radius of the tab
     * defualt - 0
     */
    tabBorderRadius?: string
    /**
     * background color of the tab
     * defualt - primaryBGColor
     */
    tabBackgroundColor?: string,
    /**
     * text color of the tab
     * defualt - primaryTextColor
     */
    tabTextColor?: string,
    /**
     * font size of the tab label
     * default - 13px
     */
    tabContentFontSize?: string
    /**
     * icon size
     * default - 20px
     */
    tabContentIconSize?: string
    /**
     * selected tab background color 
     * defualt - primaryTextColor
     */
    selectedTabBackgroundColor?: string,
    /**
     * selected tab text color
     * defualt - primaryBGColor
     */
    selectedTabTextColor?: string,
    /**
     * background color of the tab when hovering 
     * defualt - secondaryBGColor
     */
    tabHoverBackgroundColor?: string
    /**
     * text color of the tab when hovering
     * defualt - secondaryTextColor
     */
    tabHoverTextColor?: string
    /**
     * aligment of the tab contnet
     * default - left
     */
    tabContentAlignment?: 'center' | 'left' | 'right'
    /**
     * background color of the contnet panel 
     * default - primaryBGColor
     */
    contentBackgroundColor?: string,
    /**
     * text color of the content panel 
     * default is primaryTextColor
     */
    contentTextColor?: string,
    /**
     * content area padding 
     * default - 5px
     */
    contentPadding?: string,
    /**
     * option to hide the indicator at the bottom of the active tab
     * default - false 
     */
    hideIndicator?: boolean
    /**
     * height of the indicator 
     * default - 2px
     */
    indicatorHeight?: string,
    /**
     * width of the indicator 
     * default - 50%
     */
    indicatorWidth?: string,

    indicatorColor?:string
    /**
     * border radius of the indicator 
     * default - 0
     */
    indicatorBorderRadius?: string,

    /**
     * colors to highlight tabs other than the selected tab
     */
    tabHighlightBackgroundColor?: string,
    /**
     * colors to highlight tabs other than the selected tab
     */
    tabHighlightTextColor?: string,

    /**
     * colors for disabled tabs 
     */
    disabledTabBackgroundColor?: string,
    /**
     * colors for disabled tabs 
     */
    disabledTabTextColor?: string,
}
```

## Usage

```tsx
import { TabComponentStyles } from 'uxp/components';
```

