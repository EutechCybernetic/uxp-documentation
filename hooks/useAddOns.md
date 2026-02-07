# useAddOns


A custom React hook that retrieves the AddOnContext, throwing an error if used outside an AddOnProvider.



## Installation

```tsx
import { useAddOns } from 'uxp/components';
```

## Signature

```tsx
function useAddOns(): AddOnContextType
```

## Examples

```tsx
const MyComponent = () => {
  const { addOns, isAddOn } = useAddOns();
  return (
    <div>
      {addOns.map(addOn => (
        <p key={addOn.id}>{addOn.title}: {isAddOn(addOn.id) ? 'Add-On' : 'Not an Add-On'}</p>
      ))}
    </div>
  );
};
```

```tsx
const MyComponent = () => {
  const { getAddOnDetails, getThunmbNailImagePath } = useAddOns();
  const addOn = getAddOnDetails('module-1');
  return (
    <div>
      {addOn && (
        <div>
          <h2>{addOn.title}</h2>
          <img src={getThunmbNailImagePath('module-1')} alt={addOn.title} />
        </div>
      )}
    </div>
  );
};
```

## Related Types

- [AddOnContextType](../types/AddOnContextType.md)
- [IAddOn](../types/IAddOn.md)
- [IInstalledAddOn](../types/IInstalledAddOn.md)
- [IWidget](../types/IWidget.md)
- [IWidgetConfigs](../types/IWidgetConfigs.md)
- [DynamicFormFieldProps](../types/DynamicFormFieldProps.md)
- [FormValue](../types/FormValue.md)
- [IFormData](../types/IFormData.md)
- [CustomValidateResponse](../types/CustomValidateResponse.md)
- [FormSectionProps](../types/FormSectionProps.md)
- [IConfigPanelProps](../types/IConfigPanelProps.md)
- [IContextProvider](../types/IContextProvider.md)
- [IPartialContextProvider](../types/IPartialContextProvider.md)
- [Language](../types/Language.md)
- [ICustomThemes](../types/ICustomThemes.md)
- [IThemeProps](../types/IThemeProps.md)
- [ThemeType](../types/ThemeType.md)
- [UserDetails](../types/UserDetails.md)
- [NavigationLink](../types/NavigationLink.md)
- [Routes](../types/Routes.md)
- [ConfiguredPage](../types/ConfiguredPage.md)
- [ComponentType](../types/ComponentType.md)
- [IUXPFunctions](../types/IUXPFunctions.md)
- [ViewOverride](../types/ViewOverride.md)
- [Environment](../types/Environment.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)
- [IDataFunction](../types/IDataFunction.md)
- [QueryParams](../types/QueryParams.md)
- [ExecutionResult](../types/ExecutionResult.md)
- [ExecuteMicroserviceConfig](../types/ExecuteMicroserviceConfig.md)
- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [LucyQueryResult](../types/LucyQueryResult.md)
- [IWidgetPreloader](../types/IWidgetPreloader.md)

