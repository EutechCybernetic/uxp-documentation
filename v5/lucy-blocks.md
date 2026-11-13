# Lucy Blocks from Your App

This guide shows how to add your own block to the **Lucy Model Designer**. It also shows how to customize the block's properties, add or remove pins, and move a v4 block to v5.

## About the examples

The main example is the **Create Child Location** block in the **Location** app. This block creates a location under another location, such as a floor under a building.

**These are examples only.** Use your own app and build any block you need. Replace the app name, version, paths, fields and service logic with your own. Parts 1 to 3 use the Location example. Part 4 uses the **Add Widget** block from the UXP app to show a v4 to v5 move.

## How it works

A Lucy block has two parts:

- **Backend (required):** Defines the block and runs its logic using `ObjectMapping.xml`, `Services.xml`, and Python.
- **Designer UI (optional):** Customizes the block's Properties panel and pins using the app's views bundle.

Start with Part 1 to create a working block. Continue with the other parts as needed:

1. **Create a block:** Register it, write its service, and test it.
2. **Customize properties:** Replace a text field with a dropdown.
3. **Manage pins:** Add or remove a pin based on a checkbox.
4. **Migrate from v4 to v5:** Move an existing custom Properties panel.
5. **Reference:** Look up supported settings and common issues.

## Before you start

- Your app should be installed on your iviva account.
- You should be able to restart iviva when backend files change.
- In this example, the app version folder is `Location/5.0/`. Use your app's folder instead.
- For Parts 2 to 4, your app needs a views bundle. Check that `Configuration.yml` includes it under `scripts:`. In the Location example:

```yaml
scripts:
  - "/Resources/views/dist/location.js"
```

---

# Part 1: Create a Block

This part creates the **Create Child Location** block. It connects the block to a Python service and runs it in Lucy.

## Step 1: Define the block in ObjectMapping.xml

Open `Location/5.0/ObjectMapping.xml`.

The Location app already has this file with `<Object type='Location'>`. Add `<ConnectorUnits>` inside it:

```xml
<ObjectMap>
    <Object type='Location'>
        <Relationships>
            ...
        </Relationships>
        <ConnectorUnits>
            <Unit name="CreateChildLocation" group="Location" service="Location.CreateChildLocation">
                <Input name="LocationName" label="Location Name" required="true" />
                <Input name="ParentLocationKey" label="Parent Location Key" required="true" />
                <Field name="LocationType" label="Location Type" />
                <Output name="LocationKey" label="Location Key" required="true" />
            </Unit>
        </ConnectorUnits>
    </Object>
</ObjectMap>
```

**Your app has no `ObjectMapping.xml`?** Create it in the app's version folder. Use your app name as the object type:

```xml
<ObjectMap>
    <Object type="YourApp">
        <ConnectorUnits>
            <!-- your <Unit> goes here -->
        </ConnectorUnits>
    </Object>
</ObjectMap>
```

What each element does:

- `Unit name`: the block's name. Use one word with no spaces, for example `CreateChildLocation`.
- `group`: the group the block shows under in the block list.
- `service`: the service the block runs. Write it as `<App name>.<Service name>`. You add the service in Step 2.
- `Input`: an input pin.
- `Field`: a setting in the Properties panel.
- `Output`: an output pin. Your Python fills it.
- `name`: the name your Python uses to read or fill the pin or field.
- `label`: the text the user sees in the designer.

The block's full type is `connector:<Object type>:<Unit name>`. Here it is `connector:Location:CreateChildLocation`. Part 2 uses it.

## Step 2: Register the service

Open `Location/5.0/Services.xml` and add this inside `<Services>`:

```xml
<Service name="CreateChildLocation" type="python" function="LocationBlocks.CreateChildLocation" />
```

- `name` must match the second part of `service` in Step 1.
- `function` is `<Python file name>.<function name>`. This one points to `CreateChildLocation` in `PyScripts/LocationBlocks.py`.

## Step 3: Add the Python function

Create `Location/5.0/PyScripts/LocationBlocks.py`:

```python
import ServiceDesk
xstr = ServiceDesk.Common.ConvertToString


def CreateChildLocation(args):
    # Input pins arrive by their name.
    name = xstr(args['LocationName']).strip()
    if not name:
        raise Exception('Location Name is required')

    # Fields arrive as 'Field.<name>'.
    typeName = xstr(args['Field.LocationType']).strip()
    types = Account.DBService().ExecuteQuery(
        'select LocationTypeKey from LocationTypeMaster where LocationType=@t', {'t': typeName})
    if types.Rows.Count == 0:
        raise Exception('Unknown location type: ' + typeName)

    result = Account.ExecuteService('Location.Location:CreateEx', {
        'LocationName': name,
        'SecondName': name,
        'LocationTypeKey': types.Rows[0]['LocationTypeKey'],
        'ParentLocationKey': args['ParentLocationKey'],
    }, ExecutionEnvironment)

    # The key 'LocationKey' fills the output pin 'LocationKey'.
    return {'LocationKey': xstr(result['LocationKey'])}
```

The important rules are:

- Read input pins using `args['<pin name>']`.
- Read fields using `args['Field.<field name>']`.
- Return a dictionary whose keys match the output pin names.
- Raise an exception if the block should fail. Lucy displays the error message.
- `Account` and `ExecutionEnvironment` are ready to use. You do not import them. Use `Account.ExecuteService(...)` to call another service.

This function uses Location tables and services. In your app, replace it with your block's own logic.

## Step 4: Restart iviva

Restart the iviva server. iviva reads `ObjectMapping.xml`, `Services.xml` and the Python files only when it starts. Reloading the page is not enough.

You do not need to install the app again.

## Step 5: Add the block in Lucy

1. Open **Lucy > Models**.
2. Select **New Model**.
3. Select **Create First Action**, then **New Action**.
4. Enter a name, such as `CreateFloor`, and select **Create Action**.
5. Open **Blocks** on the left and search for `CreateChildLocation`.
6. Find it under **Location** and drag it onto the canvas. The block list shows the name as written, `CreateChildLocation`. The canvas shows it as **Create Child Location**.
7. Connect the action's **All Output** to the block.

The block has two input pins, **Location Name** and **Parent Location Key**. It has one output pin, **Location Key**.

## Step 6: Test the block

1. Select the block and open **Properties**.
2. Set **Location Name** to a new name, such as `Floor 10`.
3. Set **Parent Location Key**. In this example, open the parent building under **Locations > Portfolios**. Its key is the number after `objectKey=` in the URL.
4. Set **Location Type** to `Floor`.
5. Add a **JSON Output** block and connect **Location Key** to its **Data** pin.
6. Select **Save** and name the model if prompted. You must save it before running it.
7. Select **Execute Action**, then **Execute**.

You should see the new location key in the result. The floor should also appear under its parent building in **Locations > Portfolios**.

**To check error handling:** Run the block again with the same location name. The example service returns `LocationName already exists!`.

---

# Part 2: Customize the Properties Panel

In Part 1, **Location Type** is a text field. This part turns it into a dropdown of the account's location types.

All files in this part are in `Location/5.0/Resources/views/src/`. Use the same folder in your app. Create the `blocks` folder if it does not exist.

You do not change the XML or Python in this part.

## Step 1: Check uxp.ts

`registerLucyBlock` tells the model designer how to show your block's fields. Most v5 apps already have it in `uxp.ts`.

Open `uxp.ts` and search for `registerLucyBlock`.

- Found it? Go to Step 2.
- Not found? Add this at the end of the file:

```ts
export function registerLucyBlock(config: { type: string; [key: string]: unknown }) {
    if (!(window as any).registerLucyBlock) {
        console.error('This code is not being run within the context of UXP');
        return;
    }
    (window as any).registerLucyBlock(config);
}
```

## Step 2: Create the dropdown component

A custom field is a normal React component. Lucy shows it in the block's **Properties** panel.

Create `blocks/LocationTypeField.tsx`:

```tsx
import React, { useEffect, useState } from 'react';
import { Label, Select } from 'uxp/components';

export const LocationTypeField: React.FunctionComponent<any> = ({ fieldConfig, value, onChange, uxpContext, readOnly }) => {
    const [types, setTypes] = useState([]);

    // Load the location types once.
    useEffect(() => {
        uxpContext
            .executeService('Location', 'LocationType:All', {}, { json: true })
            .then((rows: any[]) => setTypes((rows || []).map((r) => ({ label: r.LocationType, value: r.LocationType }))))
            .catch(() => setTypes([]));
    }, [uxpContext]);

    return (
        <>
            <Label>{fieldConfig?.label || 'Location Type'}</Label>
            <Select
                options={types}
                selected={typeof value === 'string' ? value : ''}
                placeholder="Select a location type"
                readOnly={readOnly}
                onChange={(v) => onChange(fieldConfig?.key || 'LocationType', v)}
            />
        </>
    );
};
```

Lucy passes these values to the component:

- `value`: The saved field value.
- `onChange(key, value)`: Updates that value.
- `uxpContext`: Lets the component call services.
- `readOnly`: Indicates whether editing is disabled.

**Note:** Custom components must render their own label, as shown with `<Label>`.

## Step 3: Register the custom field

Create `blocks/CreateChildLocationBlock.tsx`:

```tsx
import { registerLucyBlock } from '../uxp';
import { LocationTypeField } from './LocationTypeField';

export function registerCreateChildLocationBlock() {
    registerLucyBlock({
        type: 'connector:Location:CreateChildLocation',
        propertyFields: {
            LocationType: { type: 'custom', label: 'Location Type', component: LocationTypeField },
        },
    });
}
```

This tells the designer to draw the `LocationType` field with your component.

- `type`: the block's full type from Part 1, Step 1.
- `LocationType`: the `<Field>` name from `ObjectMapping.xml`. It must match exactly.
- `component`: the component from Step 2.

## Step 4: Register it in index.tsx

`index.tsx` runs when your app's bundle loads. Calling the function here registers the block.

Open `index.tsx`. Add the import:

```tsx
import { registerCreateChildLocationBlock } from './blocks/CreateChildLocationBlock';
```

Then call the function after the imports:

```tsx
registerCreateChildLocationBlock();
```

## Step 5: Build the views

```bash
cd Location/5.0/Resources/views
npm run build
```

You do not need to restart iviva. Only the views changed.

## Step 6: Test the dropdown

1. Reload the model designer and open the model from Part 1.
2. Select **Create Child Location** and open **Properties**.
3. Choose **Floor** from the **Location Type** dropdown.
4. Enter a new **Location Name**.
5. **Save** the model, then select **Execute Action > Execute**.

The new location should use the selected type.

---

# Part 3: Add or Remove Pins

Some inputs are only needed in certain cases. This example adds a **With Floor Size** checkbox:

- **Checked:** Show a `FloorSize` input pin.
- **Unchecked:** Remove that pin.

Complete Part 2 first. This part changes the same files.

## Step 1: Add the checkbox field

In `Location/5.0/ObjectMapping.xml`, add this field inside the `CreateChildLocation` unit, after `LocationType`:

```xml
<Field name="WithFloorSize" label="With Floor Size" />
```

Do not add `FloorSize` as an `<Input>` in `ObjectMapping.xml`. Every `<Input>` is on the block all the time. The `FloorSize` pin must show only when the box is ticked. The component in Step 3 adds the pin when the box is ticked and removes it when the box is unticked.

## Step 2: Handle the optional pin in Python

In `Location/5.0/PyScripts/LocationBlocks.py`, add `FloorSize` to the `CreateEx` call:

```python
    result = Account.ExecuteService('Location.Location:CreateEx', {
        'LocationName': name,
        'SecondName': name,
        'LocationTypeKey': types.Rows[0]['LocationTypeKey'],
        'ParentLocationKey': args['ParentLocationKey'],
        'FloorSize': args['FloorSize'] if args.ContainsKey('FloorSize') else 0,
    }, ExecutionEnvironment)
```

The pin may not exist when the box is unchecked. Use `args.ContainsKey(...)` before reading an optional pin to avoid a `KeyError`.

## Step 3: Create the checkbox component

Lucy passes `pinContext` to every custom component. The component uses it to add or remove the block's pins.

Create `Location/5.0/Resources/views/src/blocks/FloorSizeToggle.tsx`:

```tsx
import React from 'react';
import { Checkbox } from 'uxp/components';

export const FloorSizeToggle: React.FunctionComponent<any> = ({ fieldConfig, value, onChange, pinContext, readOnly }) => {
    const checked = value === true || value === 'true';

    const toggle = (on: boolean) => {
        // Save the box's value.
        onChange(fieldConfig?.key || 'WithFloorSize', on);

        // Add or remove the pin.
        const hasPin = pinContext.inputPins.some((p: any) => p.id === 'FloorSize');
        if (on && !hasPin) pinContext.onAdd('inputs', 'FloorSize');
        if (!on && hasPin) pinContext.onDelete('inputs', 'FloorSize');
    };

    return <Checkbox label={fieldConfig?.label || 'With Floor Size'} checked={checked} onChange={toggle} readOnly={readOnly} />;
};
```

Use `pinContext` to manage pins:

- `pinContext.inputPins`: Reads current input pins.
- `pinContext.onAdd('inputs', name)`: Adds an input pin.
- `pinContext.onDelete('inputs', name)`: Removes an input pin.

The name you pass, here `FloorSize`, is the pin's name. Python reads it as `args['FloorSize']`. The designer also shows it as the pin's label.

## Step 4: Add the checkbox to the block

Open `Location/5.0/Resources/views/src/blocks/CreateChildLocationBlock.tsx` and import:

```tsx
import { FloorSizeToggle } from './FloorSizeToggle';
```

Add `WithFloorSize` to `propertyFields`:

```tsx
        propertyFields: {
            LocationType: { type: 'custom', label: 'Location Type', component: LocationTypeField },
            WithFloorSize: { type: 'custom', label: 'With Floor Size', component: FloorSizeToggle },
        },
```

## Step 5: Restart and build

1. Restart the iviva server. `ObjectMapping.xml` and the Python file changed.
2. Build the views:

   ```bash
   cd Location/5.0/Resources/views
   npm run build
   ```

## Step 6: Test the checkbox

1. Reload the designer and open your model.
2. Select **Create Child Location** and open **Properties**.
3. Check **With Floor Size**. A `FloorSize` input pin should appear.
4. Enter `120` for **FloorSize** and give the location a new name.
5. **Save** and run the action.
6. Uncheck **With Floor Size**. The `FloorSize` pin should disappear.

**Another example:** The **Send WhatsApp Message** block in the MessagingConnector app updates its input pins when you select a template.

---

# Part 4: Migrate a v4 Block to v5

In v4, apps used a separate script to draw custom block panels. In v5, you register those panels with `registerLucyBlock` in the views bundle.

The example is the **Add Widget** block from the UXP app. Its Properties panel contains **Remove Widgets** and **Remove Sidebar Links** checkboxes. For your app, use the fields and controls in your existing block.

## Step 1: Find the old block script

Open your app's `Configuration.xml` and look for:

```xml
<Connector blocksrc='blocks/dist/blocks.js' />
```

No such line? Your app has no v4 blocks. You do not need Part 4.

The script's source is usually under `Resources/blocks/src/`. In the UXP example, it is `Resources/blocks/src/blocks.tsx`.

## Step 2: Identify the saved properties

Find each `registerBlockConfig("connector:...")` call. Note its block type, such as `connector:UXP:AddWidget`.

`renderProperties` is the v4 function that draws the block's Properties panel. Inside it, find every value the panel saves. A save looks like this:

```tsx
config.onPropsChanged(FlowBlock.setProperties(config.block, { RemoveWidgets: checked }))
```

For **Add Widget**, the saved properties are:

- `RemoveWidgets`: Checkbox.
- `RemoveSidebarLinks`: Checkbox.

## Step 3: Declare the fields in ObjectMapping.xml

Find the block's `<Unit>` in `ObjectMapping.xml`, for example `<Unit name="AddWidget" ...>`.

Make sure each saved property has a matching `<Field>`:

```xml
<Field name="RemoveWidgets" label="Remove Widgets" />
<Field name="RemoveSidebarLinks" label="Remove Sidebar Links" />
```

Only declared fields are sent to the service. Missing fields won't reach Python.

## Step 4: Check uxp.ts

Open `Resources/views/src/uxp.ts` and check for `registerLucyBlock`. If it's missing, add the function from Part 2, Step 1.

## Step 5: Register the v5 Properties panel

Create `Resources/views/src/blocks/AddWidgetBlock.tsx`:

```tsx
import { registerLucyBlock } from '../uxp';

export function registerAddWidgetBlock() {
    registerLucyBlock({
        type: 'connector:UXP:AddWidget',
        propertyFields: {
            RemoveWidgets: { type: 'checkbox', label: 'Remove Widgets' },
            RemoveSidebarLinks: { type: 'checkbox', label: 'Remove Sidebar Links' },
        },
    });
}
```

Choose a field type that matches the original control:

- Checkbox: `type: 'checkbox'`.
- Text field: `type: 'input'`.
- Fixed list: `type: 'select'` with `options`.
- Service-backed list: `type: 'custom'` with a component, as in Part 2.

**Keep the original field names** so existing models retain their saved values.

Register the block in `Resources/views/src/index.tsx`:

```tsx
import { registerAddWidgetBlock } from './blocks/AddWidgetBlock';

registerAddWidgetBlock();
```

## Step 6: Build and remove the old script

1. Build the views:

   ```bash
   cd UXP/5.0/Resources/views
   npm run build
   ```

2. Remove `blocksrc='blocks/dist/blocks.js'` from the `<Connector>` entry in `Configuration.xml`.
3. Restart iviva.

## Step 7: Test an existing model

1. Open a model that already uses the block.
2. Select the block and open **Properties**.
3. Check that the new panel shows the previously saved values.
4. Run the action to confirm it still works.

---

# Part 5: Quick Reference

## Block definitions in ObjectMapping.xml

`<Unit>` attributes:

| Attribute | Purpose |
| --- | --- |
| `name` | Block name. The block list shows it as written. The canvas splits it into words. |
| `group` | Group in the block list. The default is the object type. |
| `service` | Service to run, in the form `<App>.<Service>`. |
| `multiple-inputs`, `multiple-outputs` | Set to `true` to let users add pins manually. |

Inside `<Unit>`:

- `<Input name label required>`: Input pin.
- `<Output name label required>`: Output pin.
- `<Field name label>`: Field in the Properties panel.

`required="true"` stops a pin from being deleted. It does **not** make its value mandatory.

The full block type is `connector:<Object type>:<Unit name>`.

## Python inputs and outputs

| Expression | Meaning |
| --- | --- |
| `args['<pin name>']` | Value of an input pin. |
| `args['Field.<field name>']` | Value of a property field (as text). A checked checkbox is `'True'`. |
| `args['Instance.Key']` | Running model instance key. |
| `args['Instance.MapKey']` | Running model instance map key. |

Return a dictionary to fill output pins with matching names. A pin named `output` receives the full dictionary. Raise an exception to fail the block and show an error message.

## Property field types

Use these in `propertyFields`:

| Type | Control |
| --- | --- |
| `input` | Single-line text field |
| `number` | Number field |
| `password` | Hidden text field |
| `textarea` | Multiline text field |
| `checkbox` | On/off checkbox |
| `select` | Single choice from `options` |
| `multiselect` | Multiple choices from `options` |
| `date`, `datetime`, `time` | Date or time picker |
| `custom` | Your own component, set with `component` |

Fields can also have a `label`.

## Custom component props

| Prop | Purpose |
| --- | --- |
| `fieldConfig` | Field settings, including `key` and `label`. |
| `value` | Saved value. |
| `onChange(key, value)` | Saves an updated value. |
| `block` | Full block object. |
| `uxpContext` | Calls services with `uxpContext.executeService(...)`. |
| `pinContext` | Reads, adds, or removes pins. |
| `readOnly` | Indicates whether editing is disabled. |

Custom components must render their own labels.

## When to restart iviva

- Changed `ObjectMapping.xml`, `Services.xml`, or Python: **Restart iviva**.
- Changed only views code: **Build the views and reload the page**.

---

# Troubleshooting

| Problem | What to check |
| --- | --- |
| **Block not in the block list** | Restart iviva. Make sure `<Unit>` is inside `<ConnectorUnits>`, inside `<Object>`. |
| **Custom field not showing** | Run `npm run build`. Check `Configuration.yml` includes the bundle, and the `registerLucyBlock` type matches exactly. Reload the page. |
| **Custom field has no label** | Add `<Label>` inside the component. |
| **“No such model” when executing** | Save the model before running it. |
| **`[[Object ... has no definition]]` appears** | An input pin has no value and isn't connected. Set or connect the pin. |
| **Python raises `KeyError`** | A pin or field is missing. Check optional pins with `args.ContainsKey(...)` and declare every field you read with `<Field>`. |

---

# Checklist for a New Block

Use this list every time. Parts 1 to 4 explain each item.

1. `ObjectMapping.xml`: add a `<Unit>` with its `<Input>`, `<Field>` and `<Output>` entries.
2. `Services.xml`: add a `<Service>` whose `name` matches the `service` in the `<Unit>`.
3. `PyScripts/<File>.py`: write the function. Read `args['<pin>']` and `args['Field.<field>']`. Return the output pins.
4. Restart the iviva server.
5. In the Model Designer, add the block, save the model and run it.
6. Optional, for custom fields or pins:
   1. Check `registerLucyBlock` is in `uxp.ts`.
   2. Add the components in `src/blocks/`.
   3. Call `registerLucyBlock` with the block's full type.
   4. Call that function from `index.tsx`.
   5. Run `npm run build` and reload the page.
