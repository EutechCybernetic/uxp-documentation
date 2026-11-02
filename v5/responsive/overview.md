# Responsive layouts

iviva runs on phones, laptops and large control-room displays. The standard uxp components adapt to each by themselves. Most apps need only small changes.

## What happens by itself

On phones, the standard components already:

- show lists and tables as cards, with tools in a bottom toolbar
- open details, forms and dialogs full screen
- move tabs and form buttons to the bottom of the screen
- show configuration pages as a list of sections
- arrange dashboard widgets in a column, unless the dashboard has its own phone layout
- open filters, dropdowns and alerts as bottom sheets

The standard components are `ObjectSearchComponent`, `SimpleConfigurationTable`, `ConfigurationView`, `TabComponent`, `SlideInForm`, `DynamicForm` and `Modal`.

## Your checklist

1. **Use the standard components.** A hand-built table, form or button row won't adapt.
2. **Configuration pages:** if your code reads the section from the URL with a default (like `section || 'general'`), phones skip the section list. Replace that code with `urlParam="section"`. Otherwise nothing is needed. See [Configuration pages on phones](config-pages.md).
3. **Lists:** put the most useful column first. Add a card design if you want a cleaner card. See [Lists and tables on phones](lists-and-tables.md).
4. **Tabs and dialogs:** use `TabSectionHeader` for a tab's title and buttons. Set dialog widths with the `width` prop, not in SCSS. See [Tabs, forms and dialogs on phones](tabs-forms-dialogs.md).
5. **Your own UI:** use the phone flag and the uxp phone pieces. See [Your own UI on phones](custom-ui.md).
6. **Dashboard widgets:** use rem sizes and fill the card. See [Responsive widgets](widgets.md).
7. **Touch:** give every icon-only button a `tooltip` or `ariaLabel`. See [Touch: tap, hold, swipe and drag](touch.md).

## Rules for every app

- Use `useIsMobileLayout()` or `html[data-uxp-viewport='mobile']`. Don't check the screen width yourself.
- Don't override `.uxpcore_*` classes or use `!important` on uxp component sizes.
- Don't put fixed widths on content. Use `width: 100%` with a `max-width`.
- Never make an action hover-only. Phones have no hover. See [Touch](touch.md).

## Check it

1. Open Chrome device mode at a phone size (390 × 844).
2. Open each page of your app. Nothing should scroll sideways. Every action should be reachable by tapping.
3. Check again at 1440 wide. The web should look as before.

## Where to go next

- [Core UXP Components](../core-components.md): what the library already gives you
- [Styling & Theming](../styling.md): theme variables and SCSS organization
