# WidgetWrapper




This is a standard wrapper for widgets.
It provides basic visual styling for common widgets. You should generally wrap all your widgets in this.



## Installation

```tsx
import { WidgetWrapper } from 'uxp/components';
```

## Signature

```tsx
const WidgetWrapper: React.FunctionComponent<IWidgetWrapperProps>
```

## Examples

```tsx
<WidgetWrapper>
 <Label>My custom widget</Label>
</WidgetWrapper>
```

```tsx
You can define custom break points for the widget and use css to make the widget responsive
Uxp will automatically apply the relevant class based on the width or height of the widget wrapper.
these class names will be prefixed with either `w-` (for width) or `h-` (for height)
then you can write css to make the widgets resposive
<WidgetWrapper
     cssBreakPoints={{
         width: {
             default: 'larger',
             100: 'smaller',
             200: 'small',
             300: 'medium'
         },
         height: {
             default: 'larger',
				100: 'smaller',
 			200: 'small',
 			300: 'medium'
			}
 	}}
	>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|className|string|No|-|-|
|cssBreakPoints|{ width?: { default: string, [key: number]: string }, height?: { default: string, [key: number]: string } }|No|-|-|
|instanceId|string|No|-|-|
|sampleData|{ /** * toggle sample data label */ showLabel?: boolean, /** * this will be shown in the popup */ description?: string, /** * this is deprecated - use product ids instead * link to buy from spaceworx * if not provided button will not be shown */ link?: string, /** * prouct ids to show on spaceworx */ productIds?: string[] }|No|-|-|
|children|React.ReactNode|No|-|-|

## Related Types

- [IWidgetWrapperProps](../types/IWidgetWrapperProps.md)

