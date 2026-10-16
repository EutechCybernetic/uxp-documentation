# Lucy: Import Page

The Lucy Import page takes an exported file, finds out what it is, and imports it through a wizard.

- **Where:** **Lucy > Settings > Import**.

# The Page

- **Drop zone:** a large file area. Drop or choose one file.
- **What you can import:** cards for each enabled type: Models, Web service, OpenAPI, On-premise connector, Dashboards, Widgets.
- **History:** a button in the header opens this session's imports. Each run is a collapse: file name, date, type and status. Expand it to see its items and **Open** links. History is cleared on reload. The modal says so.

# File Types

- **Models:** model files (v2). Uploaded as before.
- **Web service:** web service connector files. One connector per file.
- **OpenAPI:** OpenAPI or Swagger files, JSON or YAML.
- **On-premise connector:** on-premise connector files.
- **Dashboards:** dashboard files. Opens the dashboard import wizard. See [Dashboards: Export and Import](dashboard-export-import.md).
- **Widgets:** widgets built in the widget designer. Not uploaded UXP modules (`main.js` and `bundle.json`).
- **Embedded dashboards:** recognised, but not imported here. A window says to open that dashboard, switch to edit mode and use **Import dashboard** there. See [Embedded Dashboards](embedded-dashboards.md).

# The Wizard

- **Opens at once:** a recognised file opens its wizard. No extra click.
- **Rows:** one row per item in the file, with a type chip.
- **Run:** no action buttons while it runs. Then **Close** only.
- **Done:** rows show **Imported**. Each item that has a page gets **Open**, in a new tab. A success line says the window can be closed.
- **Failed:** the first row shows the server's message and **Import again**. The other rows show **Not imported**.
- **History:** every run is recorded, done or failed.

# By Design (not bugs)

- **Switched off:** model template files and user group row files are refused as "Unrecognised file". They are not imported as another type.
- **Unknown files:** refused as "Unrecognised file".
- **One file at a time.**

# Testing Focus

- A real exported file of each type, from another account.
- Failure paths: a file the server refuses shows its message and Import again.
- Open links after import, and the History modal.
