# InfoCardProps


Props for the InfoCard component


## Definition

```tsx
interface InfoCardProps {
    data: InfoCardData
    /**
     * Field mappings for ItemCard display (maps data fields to image/title/subtitle/name)
     */
    fields?: InfoCardFields;

    /**
     * Details content to show in dropdown on click
     * Can be:
     * - React.ReactNode: Static content
     * - Function returning React.ReactNode: Dynamic custom content
     * - Function returning ObjectInfoCardProps: Config for ObjectInfoCard
     */
    details?: InfoCardDetailsContent;

    /**
     * Display variant: 'card' shows full card with title/subtitle, 'avatar' shows only profile image
     * Defaults to 'card'
     */
    variant?: 'card' | 'avatar';

    /**
     * Size of the profile image: small (2rem), medium (3rem, default), large (4rem), or custom CSS unit (e.g., "5rem")
     */
    size?: Size;

    /**
     * Shape of the profile image: circle (default) or square
     */
    shape?: Shape;

    /**
     * Position for the dropdown. Defaults to 'bottom-left'
     */
    dropdownPosition?: DropdownPosition;

    /**
     * Additional CSS class names
     */
    className?: string;

    /**
     * Inline styles
     */
    style?: React.CSSProperties;
}
```

## Usage

```tsx
import { InfoCardProps } from 'uxp/components';
```

## Related Types

- [InfoCardData](../types/InfoCardData.md)
- [ExecuteRequestConfig](../types/ExecuteRequestConfig.md)
- [ExecuteConfig](../types/ExecuteConfig.md)
- [ExecuteActionConfig](../types/ExecuteActionConfig.md)
- [ExecuteConfigBase](../types/ExecuteConfigBase.md)
- [ExecutionOptions](../types/ExecutionOptions.md)
- [CachingOptions](../types/CachingOptions.md)
- [ExecuteServiceConfig](../types/ExecuteServiceConfig.md)
- [ExecuteMicroserviceConfig](../types/ExecuteMicroserviceConfig.md)
- [ExecuteAPIConfig](../types/ExecuteAPIConfig.md)
- [ExecuteQueryConfig](../types/ExecuteQueryConfig.md)
- [QueryParams](../types/QueryParams.md)
- [ExecuteCollectionConfig](../types/ExecuteCollectionConfig.md)
- [UseExecuteOptions](../types/UseExecuteOptions.md)
- [InfoCardFields](../types/InfoCardFields.md)
- [InfoCardDetailsContent](../types/InfoCardDetailsContent.md)
- [DetailsContent](../types/DetailsContent.md)
- [RowData](../types/RowData.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)
- [DropdownPosition](../types/DropdownPosition.md)

