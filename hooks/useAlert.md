# useAlert

The react hook for creating alerts and confirm alerts



## Installation

```tsx
import { useAlert } from 'uxp/components';
```

## Signature

```tsx
function useAlert(): IAlertResult
```

## Examples

```tsx
alerts.show("Item updated")
```

```tsx
alerts.show({title: "Info", content: "Item updated", cancelButtonTitle: "Ok" })
```

```tsx
Auto close an alert (disabled by default)

alerts.show({content: 'Item updated', autoClose: true, closeAfter: 2000})
```

```tsx
wait until alert is closed

 await alerts.show("Item updated")
 ... execute the rest
```

```tsx
let hasConfirmed = await alerts.confirm("Are you sure?")

 if(hasConfimed) {
     ... execute the rest
 }
```

```tsx
alerts.confirm("Are you sure?")
.then(hasConfirmed => {
     if(hasConfirmed) {
         ... execute the rest
     }
})
```

## Related Types

- [IAlertResult](../types/IAlertResult.md)
- [IBaseAlertProps](../types/IBaseAlertProps.md)
- [IAlertContent](../types/IAlertContent.md)
- [IConfirmAlertProps](../types/IConfirmAlertProps.md)
- [IFormAlertProps](../types/IFormAlertProps.md)
- [IAlertFormField](../types/IAlertFormField.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [SubSectionProps](../types/SubSectionProps.md)

