# Styling & Localization

Make a screen look like the rest of the product, in every theme and every language.

| Page | What is in it |
|---|---|
| [Styling & Theming](./styling.md) | Use the standard components first; then the theme system, the CSS variables, SCSS organization and RTL support |
| [Font Weights](./font-weights.md) | The theme's font-weight tokens, when to use each, and how to migrate hard-coded weights |
| [Localization](./localization.md) | `localization.json`, `$L`, parameters in strings and the naming conventions for keys |
| [Lint & Scoped CSS](./lint-and-scoped-css.md) | `uxp-lint`, and the scoped CSS setup that keeps an app's styles from leaking into anyone else's |

## Two rules that save most of the work

Reach for a library component before writing your own: it already carries the theme, the spacing and the
responsive behaviour. And put every user-visible string through `uxpContext.$L`, including column labels
and empty-state messages — retrofitting that later is far more work than doing it as you write.

## Where to go next

- [Core UXP Components](./core-components.md): what the library already gives you
- [Interface guidelines](../uxp/interface-guidelines.md): which component matches the shape of your screen
