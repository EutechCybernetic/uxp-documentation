# Lucy: Model Designer and Connectors

- **Import an OpenAPI spec:** import an OpenAPI file and convert it into a web service connector.

## Model Designer UI

- **Collection Filter Editor** in the Model Designer is revamped.
- **Debugger revamped:** selecting an action puts the designer into inspection mode; click each block to see its inputs and outputs.
- **API Panel:** revamped UI.
- **Design Surface:** revamped block appearance — each block shows a small preview of its config inside the block.
- **Design Surface interactions:**
  - Selecting a block shows an **Add Step** callout to add a new block and attach it to the selected one.
  - A block toolbar overlay appears on a selected block: view properties or delete the block.
  - A property editor popup lets you edit the block's properties in a popup next to the block.

- **What to check:**
  - Import a valid OpenAPI file — a web service connector is created; an invalid file shows a clear error.
  - Open an action — the designer enters inspection mode; clicking a block shows its inputs and outputs.
  - The **Add Step** callout adds a connected block; the block toolbar opens properties and deletes; the property popup edits and saves.
  - The Collection Filter Editor and the API Panel render and work.
  - Blocks show their config preview inside the block on the design surface.

## Models list and details panel

Ticket: [LPVR-1199](https://eutech.atlassian.net/browse/LPVR-1199)

- **Where:** **Lucy > Models**: the row menu of a model, the model details panel (click a row), and the settings panel inside the designer.
- **Make Active / Make Inactive** and **Delete model** are available in all three places and behave the same way. Before, the list had neither, and the details panel had no delete.
- Each action asks for confirmation, then asks you to type `confirm`.
- **Delete is blocked** when other items refer to the model, for example a model instance. The message says the item is referenced by other items.
- The three actions are shown only to users with the Lucy role **canbuildmodels**. **Edit Model** and **Export** are not affected.
- **What to check:**
  - Make a model inactive from the row menu: it leaves the **Active Models** list and shows as Inactive under **All Models**. Make it active again.
  - Do the same from the details panel: the status tag and the button label follow.
  - Delete a test model from the row menu and another from the details panel: the model leaves the list and the panel closes.
  - Try to delete a model that has an instance: the delete is refused and the model stays.
  - Log in as a user without **canbuildmodels**: the three actions are not shown.
