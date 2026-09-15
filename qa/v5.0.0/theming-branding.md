# Theming & Branding

## Theming

- **Default Themes:** Four themes are available, but only one will be active for initial release (focus on light theme, but check others).
- **Customization:** Full (100%) customization is allowed, including overriding default themes or creating new ones.
- **Theme Editor:** Now a settings-style editor (same pattern as Branding) — sections plus a search box that finds individual colour names.
  - Save keeps the editor open; saving a new theme switches it into edit mode, so a second save updates instead of creating a duplicate.
  - The secondary button reads **Close** when nothing is unsaved and **Cancel** when there are unsaved changes.
  - Default themes lock Name and Type, with a notice explaining why.

## Typography (Font Weights)

The platform font is Satoshi, now loaded as a variable font (weights 300–900). Six theme font-weight tokens drive text weights across all v5 apps.

- **Testing Focus:** A whole-app typography sweep — genuine Bold/Black weights now render (previously some bold text rendered as regular). Check headings, buttons, table headers, navigation labels and the code editor for consistency.
- **Expected:** A brief font-swap flash on a cold load is normal; invisible text is not.

## Branding (Simplified Theming)

- It is a simplified method for theming.
- Users configure only the logo and the branding color.
- The application automatically generates the appropriate text color and updates the theme based on these inputs.
- **Testing Focus:** set a light and then a dark branding color and confirm the generated text stays readable on buttons and headers; change the logo and confirm it shows in the app.
- **Favicon:** Configurable under **Administration > Branding > Branding > Favicon** (URL or file upload). Applies to both the app and the login page; clearing it falls back to the default iviva icon.
- **Browser Tab Title:** Not part of Branding — it follows the Account name set under **Administration > General Settings > General**. With no account name set, the title is empty.
