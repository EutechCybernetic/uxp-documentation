# Bulk Import

- All bulk imports are accessible from one central location
- Bulk import process lets you individually map fields to excel sheet columns before doing the upload
- Auto map fields where possible
- Can set default values for fields that don't have a corresponding column
- **Instruction Sheet:** A template whose first sheet is named "Instructions" imports from the data sheet, not the instructions.
- **Naming:** The wizard header shows the schema name, and the downloaded template file is named after the schema.
- **Large Mappings:** Mappings with many columns save without truncation.
- **Testing Focus:** download a template, fill a few rows leaving one column out, map the columns (check the auto-mapped ones), set a default value for the missing field, import, and confirm the records carry both the sheet values and the default.
