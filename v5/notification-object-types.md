# Notification Template Object Types

Each notification template belongs to one object type, such as `User` or `Asset.InsurancePolicy`. The object type decides which record fills the `#{this.Field}` placeholders when the notification is sent.

In **Administration > Notifications > Templates**, the **Object Type** list shows only the types that support notifications. An app declares its types in its `Configuration.xml`.

- **Needs:** core 5.2.0. Older cores ignore the section.

## Declare the Types

Add a `NotificationObjects` element to the root of the app's `Configuration.xml`. It sits next to sections such as `DataViews`.

```xml
<NotificationObjects>Asset, Asset.InsurancePolicy, Asset.AssetWarrantyTransfer</NotificationObjects>
```

- Separate the types with commas. Spaces around commas are ignored.
- Use the full object type, the same value a template stores.
  - A model named after its app is just the app name, for example `User` or `Asset`.
  - Any other model is `App.Model`, for example `Asset.InsurancePolicy`.
- Restart core after a change. The configuration is read when the app loads.

## What the List Shows

- Every type that an app declares.
- Every type that already has a template, even when no app declares it. Existing templates and the types they use never disappear from the list.
- Nothing else. Other models do not show.

Sending is not affected. Templates are found by key, or by name and object type, as before.

## Coming from v4

A v4 app linked to its templates page with the object type in the URL:

```xml
<Link view='notificationtemplates?ObjectType=Asset' text='Asset Message Templates' />
```

Each `ObjectType` value in such links becomes one entry in `NotificationObjects`.

## Example: the User App

```xml
<DataViews>
    <View name='UserTypesView' />
</DataViews>
<!-- Object types offered for notification templates (comma-separated) -->
<NotificationObjects>User</NotificationObjects>
```
