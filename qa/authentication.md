# Authentication

The authentication process has migrated to v5 as part of the UI migration and requires full testing.

- **Primary Flows:** Validate the standard login and logout procedures to ensure session persistence and secure termination.
- **Logout URL:** `GET /view/auth/logout` ends the session and lands on the login page. The old v4 URL (`/Apps/Auth/userlogout`) now redirects into the v5 flow — verify it no longer leaves the user logged in. Keycloak/OIDC accounts redirect to `/IAM/Logout`; SAML accounts redirect to the configured custom logout URL.
- **Security Recovery:** Test the password reset lifecycle and the accuracy of security question verification.
- **Forgot Password:** Now a full page (`/view/auth/forgot-password`), not a modal. Reset Password and Security Question forms have a Cancel button back to login.
- **Previous Password Reuse:** Configured under **Administration > Access and Security > Settings** ("Previous password limit": allow reuse, or check against the last 1–10 passwords). Enforced on both self-service Change Password and the emailed Reset Password flow; the error message shows the configured number.
- **Generic Reset Errors:** Reset failures (expired link, unknown login ID, reset disabled) all show the same generic message — no hint about which one it was. Only password-validation errors are specific.
- **Security Question Lockout:** 4 wrong answers within 5 minutes auto-disables password reset for that user. An admin can re-enable it ("Enable password reset" on the user). **Testing focus:** give a test user a security question, answer it wrongly four times within five minutes, confirm reset is refused with the generic message, re-enable it as an admin and complete a reset.
- **SSO Integration:** Verify Single Sign-On (SSO) compatibility with both Google and Microsoft.

# Permission Changes (Forced Logout)

Changing a user's permissions (user group roles, group membership, app role edits) now expires the affected sessions instead of silently refreshing them.

- **Countdown Banner:** Affected users see a top banner with a 2-minute countdown and a "Logout now" button; at zero they are logged out automatically.
- **Persistence:** The banner survives page refresh and new tabs, showing the correct remaining time.
- **After Re-login:** The new permissions are in effect.
- **Not Triggered By:** Creating/assigning/deleting navigation profiles — those refresh navigation without the banner or logout.

# Login Page Configuration

Found under **Administration > Branding > Login Page**, this module allows for 100% white-labeling of the entry experience. Tabs: Layout, Form Style, Custom Styles, Localization. Header actions: Clear cache, Reset to defaults, Save.

- **Layouts:** Five options — Island horizontal, Island vertical, Fullpage, Island horizontal + globe, Island vertical + globe. Switching layout loads that layout's defaults (a warning banner shows until saved); switching back to the saved layout restores the saved config. A layout switch keeps the account logo; Reset to defaults restores the default logo.
- **Backgrounds:** Three types — colour, image, animated globe. Globe options: alignment, size (50–200%), a locations list (name/latitude/longitude with validation), Import from Location app, Load iviva offices, and a fallback colour painted while the globe loads.
- **Colours & Gradients:** Colour fields (background, panel, globe fallback) accept CSS gradients as well as solid colours.
- **Live Preview:** The preview pane renders the real login page at your own browser resolution and reflects unsaved edits as you type; it survives switching between tabs.
- **Localisation:** Ensure the login page correctly renders based on the selected locale.
