# Navigation and Page Errors: View Links Need a Page

A View link must now have a page. Page errors show as a centred error card that shrinks to fit small spaces.

- **Ticket:** [LPVR-1237](https://eutech.atlassian.net/browse/LPVR-1237).

# View Links Need a Page

- **Where:** **Administration > Navigation > Master Links**, the link form. Also a dashboard's **Links** tab, which already required it.
- **Rule:** a View link cannot be saved without a **Page**. The form shows "This field is required" under Page.
- **Other types:** Group / Label, Symlink, Redirect and the rest are unchanged. A heading is a Group. To point at another route, use a Symlink or a Redirect.
- **Existing links:** links already saved without a page are not changed. Editing one needs a page, or a change of type.
- **YAML links:** links from an app's YAML are not changed.

# A View Link With No Page

- **Before:** opening it showed 404 to everyone.
- **Users who can customise pages:** the "Unable to find the view" card inside the app, with the sidebar and header. Its details say "This navigation link has no page.", show the address, and list what to check.
- **Everyone else:** the 404, as before.
- **Role:** `System: cancustomisepagesanddashboards`. A signed-out (public) visitor always gets the 404.

# Error Cards Centred

- **New version:** when a page part fails to load because a newer version was released, a centred card says "A new version is available." with a **Reload** button. Before, it was a small line at the top left.
- **Something went wrong:** the same centred card, in red.
- **Small spaces:** inside a dashboard tile or a narrow panel, the card shrinks to a single line, then to an icon, on its own. It stays centred where the card was. One-line messages that are one line by design (access denied in a detail tab or a widget tile) keep their place.
- **Full-page errors in a small window:** 404 and access denied stay readable. The single-line form keeps a white card, and its button moves under the text in a narrow window.
- **Never reloads by itself:** unsaved work is kept until the user clicks **Reload**.

# Page Editor on Custom Pages

- **Where:** a page opened with `?configurepage=1` (Customise the Page).
- **Custom link or route** (made in Master Links or Custom Routes, not from an app): the chip says **Custom** and there is no **Reset to default** button. Before, Change turned the chip to Overridden and Reset failed with "No original view found in YML for this page."
- **App link or route** (from an app's YAML): Default, Overridden after Change, and Reset back to the app's page, as before.
- **Audit:** every page change on a link or route is recorded in the audit trail: "Page changed: <label>", with the old and new page and the user.

# Invalid Component

- **Before:** a dashboard tile whose component could not be found could show "Invalid Component" as plain text.
- **Now:** the standard "Unable to find the view" card. Users who can customise pages also see the cause and what to check.

# Testing Focus

- Add a View link with no page in Master Links: save is blocked. A Group with no page still saves.
- Open a View link saved before without a page, as an admin and as a user without the customise role.
- Release a new version while a page is open, then open a part of the page not loaded yet: the centred new-version card.
- Dashboard tiles with a missing widget, on a large and a small tile.
