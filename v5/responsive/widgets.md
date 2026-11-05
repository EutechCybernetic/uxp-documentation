# Responsive widgets

Dashboards run on laptops and on large displays (4K screens in control centres). The base font is 13px up to 1920 wide and grows on larger displays, so the whole UI scales there. Your widget scales with it if it follows these steps.

## Steps

1. **Use rem for every size.** Never use px for fonts or spacing. The base font grows with the screen, and rem follows it.
2. **Fill the card.** Give the widget root `width: 100%` and `height: 100%`. Don't use fixed widths or heights.
3. **Change the layout by card size, not screen size.** Put `container-type: inline-size` on the widget root and use `@container` rules. Browsers older than 2023 ignore `@container`. Write the wide layout as the normal rule, so those browsers still show a working widget.
4. **Chart libraries and canvas need px numbers.** Use `useRemToPx()` so they grow too.
5. **Use `__width__` and `__height__` for logic only**, not for text sizes.
6. **Test** in Chrome device mode at 1440, 1920, 2560 and 3840. The widget should keep its layout, just bigger above 1920.

## Examples

Sizes in rem:

```scss
.my-widget {
    width: 100%;
    height: 100%;
    padding: 1rem;
    container-type: inline-size;

    &__value {
        font-size: 2.5rem;
    }
}
```

Layout by card size. The normal rule is the wide layout. The `@container` rule only changes it for narrow cards:

```scss
// Stack the two columns when the card is narrower than 30rem
@container (max-width: 30rem) {
    .my-widget__columns {
        flex-direction: column;
    }
}
```

Chart font sizes:

```tsx
import { useRemToPx } from 'uxp/components';

const toPx = useRemToPx();

<XAxis tick={{ fontSize: toPx(0.9) }} />
```

`remToPx(rem)` does the same outside components. It reads the current size once, so it does not update on resize.

## What the framework does for you

- The base font size is 13px up to 1920 wide, then grows with the screen width (15.3px at 2560, 20px at 3840). Phones use 14px.
- Dashboard gaps (margin and padding) scale the same way.
- Widget chrome (title bar, buttons, tables, pagination, loaders) is in rem.
