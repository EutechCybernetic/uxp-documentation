# InfoCardProps


Props for the InfoCard component.


## Definition

```tsx
export interface InfoCardProps {
    /**
     * Data source — either an ExecuteRequestConfig (InfoCard fetches data) or a plain object (data already fetched).
     */
    data: InfoCardData;

    /**
     * Field name mappings — tells InfoCard which property in `data` holds the image URL, title text, subtitle text, and name (for initials).
     */
    fields?: InfoCardFields;

    /**
     * Extra stacked fields rendered below the subtitle. Each field has its own style.
     */
    extraFields?: InfoCardExtraField[];

    /**
     * Details content shown in a dropdown when the card is clicked.
     * Can be a ReactNode, a function returning ReactNode, or a function returning ObjectInfoCardProps.
     */
    details?: InfoCardDetailsContent;

    /**
     * Display variant: 'card' shows avatar + title/subtitle, 'avatar' shows only the profile image.
     * Defaults to 'card'.
     */
    variant?: 'card' | 'avatar';

    /**
     * Size of the profile image. Defaults to 'medium'.
     */
    size?: Size;

    /**
     * Shape of the profile image. Defaults to 'circle'.
     */
    shape?: Shape;

    /**
     * Position for the details dropdown. Defaults to 'bottom-left'.
     */
    dropdownPosition?: DropdownPosition;

    /**
     * Layout variant.
     * - 'default' (standard row): avatar left, content center, badges/actions right.
     * - 'collapsed' (details sidebar): content left, avatar right.
     * Defaults to 'default'.
     */
    layout?: 'default' | 'collapsed';

    /**
     * Style applied to the title. Defaults to 'primary' (bold).
     */
    titleStyle?: InfoCardFieldStyle;

    /**
     * Click handler for the title — also adds a pointer cursor and link colouring when combined with titleStyle='link'.
     */
    onTitleClick?: () => void;

    /**
     * Style applied to the subtitle. Defaults to 'secondary'.
     */
    subtitleStyle?: InfoCardFieldStyle;

    /**
     * Badges rendered to the right of the body (default layout) or below the body fields (collapsed layout).
     * Typically Chip components.
     */
    badges?: React.ReactNode;

    /**
     * Action buttons rendered to the right of badges (default layout only).
     * Typically IconButton components.
     */
    actions?: React.ReactNode;

    /** Additional CSS class names */
    className?: string;

    /** Inline styles */
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
- [InfoCardExtraField](../types/InfoCardExtraField.md)
- [InfoCardFieldStyle](../types/InfoCardFieldStyle.md)
- [InfoCardDetailsContent](../types/InfoCardDetailsContent.md)
- [DetailsContent](../types/DetailsContent.md)
- [RowData](../types/RowData.md)
- [ObjectInfoCardProps](../types/ObjectInfoCardProps.md)
- [ObjectField](../types/ObjectField.md)
- [Size](../types/Size.md)
- [Shape](../types/Shape.md)
- [DropdownPosition](../types/DropdownPosition.md)

