# NotificationBlock

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
 <NotificationBlock variant="info" mode="compact" layout="bordered" title="Access is locked">
     <div>App Roles: System:canopenapp</div>
 </NotificationBlock>
 <NotificationBlock variant="warning" message="Permissions changed" action={<button onClick={reload}>Refresh</button>} />
```

## Live preview

[Open NotificationBlock in the playground →](<https://story.uxp.iviva.com/?path=/docs/feedback-notificationblock--docs>)

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|message|string|No|-|"Chiller 02 will be offline on 12 Aug from 09:00 to 11:00."|
|title|string|No|-|"Scheduled maintenance"|
|children|React.ReactNode|No|-|-|
|variant|[NotificationVariant](../types/NotificationVariant.md)|No|-|-|
|mode|[NotificationMode](../types/NotificationMode.md)|No|-|-|
|layout|[NotificationLayout](../types/NotificationLayout.md)|No|-|-|
|action|React.ReactNode|No|-|-|
|class|string|No|-|-|
|styles|any|No|-|-|

## Related Types

- [INotificationProps](../types/INotificationProps.md)
- [NotificationVariant](../types/NotificationVariant.md)
- [NotificationMode](../types/NotificationMode.md)
- [NotificationLayout](../types/NotificationLayout.md)

