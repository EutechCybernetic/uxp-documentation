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
