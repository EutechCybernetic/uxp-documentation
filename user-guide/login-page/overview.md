# Login page

You can change how the login page looks. This page is for administrators.

## Where to find it

- Go to **Administration > Branding > Login Page**.
- You need the manage role of the System app.
- The editor works on desktops only.

## The editor

The editor has four tabs:

- **Form style config**: the layout type, the login card, input fields, buttons and links.
- **Layout config**: the background (colour, image or globe) and the logo.
- **Custom styles config**: your own CSS.
- **Localization config**: languages and login page messages.

The first three tabs show a live preview next to the fields. Click **Save** to apply your changes.

## Layout types

Choose one in **Layout type**:

- **Island horizontal**: one login card on the background.
- **Island vertical**: one card with two panels side by side.
- **Fullpage**: two panels that fill the screen.
- **Island horizontal + globe** and **Island vertical + globe**: an island layout with a globe background.

Picking another layout shows that layout's default design. Your logo and custom CSS are kept. Nothing changes until you click **Save**. Pick the saved layout again to get your saved design back.

## On phones

Every layout works on phones. The arrangement changes. Your sizes and colours still apply.

- **Island layouts**: the card is centred and never wider than the screen. If it is taller than the screen, the page scrolls.
- **Island vertical**: the two panels stack into one card. The card uses the left panel's background and text colour.
- **Fullpage**: the panels stack in one column on the left panel's background. The left panel comes first.

A screen counts as a phone when it is:

- narrower than 768px, or
- in portrait and narrower than 1280px, or
- shorter than 480px.

## Preview on a phone

- Above the preview, switch **Desktop** to **Phone**.
- The preview shows the login page in a 390 × 844 phone frame.
- **Desktop** shows it at your browser's size.

## Custom styles

Custom styles apply on every screen size. To target one, start a rule with:

- `html[data-uxp-viewport="mobile"]` for phones, portrait tablets and phones held sideways.
- `html[data-uxp-viewport="desktop"]` for desktops and landscape tablets.

For large screens, use a media query. Common widths: 480, 768, 1024, 1280, 1536, 1920 and 2560.

The editor has the same example under **Example**, with a copy button:

```css
/* Phones, portrait tablets, phones held sideways */
html[data-uxp-viewport="mobile"] .uxpcore_loginform__title { font-size: 1.5rem; }

/* Desktops and landscape tablets */
html[data-uxp-viewport="desktop"] .uxpcore_loginform__island { box-shadow: none; }

/* Large screens only (widths: 480, 768, 1024, 1280, 1536, 1920, 2560) */
@media (min-width: 1920px) {
    .uxpcore_loginform__logo { max-width: 18rem; }
}
```

More on phone and desktop rules: [Custom UI on phones](../../v5/responsive/custom-ui.md).
