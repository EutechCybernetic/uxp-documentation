# Reports: Generate Form and Parameter Editor

The form that asks for a report's parameters is rebuilt. It now gives each parameter type its own input, as v4 did. The parameter editor saves "Required" correctly.

- **Where:** **Platform > Reporting > Reports**. Generate a report from its row actions, or from the report's details panel.

# What Changed

- **Form header:** the title is the report name. Generate sits next to it as a split button with **PDF** and **Excel**.
- **Output:** the report opens in a new window in the chosen format. Bold Reports reports give raw Excel, as in v4.
- **One input per parameter type:**
  - **Model:** a dropdown of that model's records, with search and more rows on scroll.
  - **Custom text:** a dropdown of the parameter's set values.
  - **Multi-select text:** a list of options to tick.
  - **Boolean:** True or False.
  - **Date, date and time, time:** pickers.
  - **Integer and currency:** number inputs.
- **Labels:** each field shows the parameter's label, or its name when there is no label. Required fields show `*`.
- **Checks before generating:**
  - A required field that is empty shows "required".
  - Integer and currency fields must be numbers. Integer fields take whole numbers only.
- **Filled in for the user:**
  - A "Site" parameter on the Location model starts with the user's site.
  - Current-user and current-time-zone parameters are filled in and not shown.
- **No parameters:** a report with no visible parameters shows a short message and can be generated as it is.
- **Parameter editor:**
  - **Fixed:** "Required" showed as ticked for every parameter, even when it was off. It now shows as it was saved.
  - Saving keeps the value the user chose.
- **Phones:** the form opens full screen.

# Testing Focus

- **Each type:** a report with one parameter of each type. Each input works and its value reaches the report.
- **Model lookup:** search works, and scrolling loads more records on a model with many records.
- **Checks:** leave a required field empty. Type letters and a decimal into an integer field.
- **Site:** the Site parameter starts with the user's site and can be changed.
- **Formats:** PDF and Excel, on a Crystal report and on a Bold Reports report.
- **Parameter editor:** open a parameter with Required off, then one with it on. Change it, save, reopen.
- **Regression:** schedule, export and edit on the Reports list still work.
