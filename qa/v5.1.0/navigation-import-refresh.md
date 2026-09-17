# Navigation: Importing Keeps Your Place in the Tree

Importing a navigation configuration package no longer rebuilds the Master Links tree from scratch.

- **Location:** **Administration > Navigation > Master Links**.
- **Fixed:** After an import the whole tree was rebuilt. Every expanded section collapsed and the scroll position was lost, so an admin importing into a large navigation tree had to find their place again.
- **Now:** The tree reloads its links in place. Expanded sections stay expanded, the scroll position is kept, and links the import added or changed still appear.
- **Compare & Sync:** Unchanged. It already refreshed the tree this way after writing to the master list.

# Testing Focus

- **Keeps your place:** Expand several sections, scroll down the tree, then import a package that adds and changes links. The added and changed links appear, and the sections you expanded are still expanded at the same scroll position.
- **Additions appear:** Import a package containing a link that does not exist in this account. It is shown in the tree straight after the import, without reloading the page.
- **Regression:** Open **Compare & Sync**, apply a change and close it. The tree still reflects the change, as before.
- **See Also:** [v5.0.1](../v5.0.1/README.md) for configuration packages themselves.
