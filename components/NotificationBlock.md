# NotificationBlock

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=notificationblock--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="NotificationBlock live demo"
></iframe>


## Installation

```tsx
import { NotificationBlock } from 'uxp/components';
```

## Signature

```tsx
const NotificationBlock: React.FunctionComponent<INotificationProps>
```

## Examples

```tsx
<NotificationBlock message="-- End Of Content --" class="uxpcore_notification--end-of-content" />
 <NotificationBlock message="Something went wrong" variant="danger" />
 <NotificationBlock message="Saved successfully" variant="success" />
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|message|string|Yes|-|-|
|variant|[NotificationVariant](../types/NotificationVariant.md)|No|-|-|
|class|string|No|-|-|
|styles|any|No|-|-|

## Related Types

- [INotificationProps](../types/INotificationProps.md)
- [NotificationVariant](../types/NotificationVariant.md)

