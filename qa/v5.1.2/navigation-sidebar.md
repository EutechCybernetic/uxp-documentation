# Navigation: Sidebar Matches Master Links

The sidebar could show links in a different order from Master links, or show links at the top level that Master links hid. Clearing the cache did not help. Both views now show the same menu.

- **Where:** the sidebar, and **Administration > Navigation > Master Links** (Sync from YMLs, Revert modified links).

# What Changed

- **Same order for equal positions:** two links with the same position now show in the same order in the sidebar, in Master links and in profiles. Before, the sidebar order could change between page loads.
- **Custom link on a built-in link's URL:** a custom link can use the same URL as a built-in parent (for example a custom "Intelligence" on `/view/agents`). Sync now puts the built-in children under the custom link. Before, they lost their parent.
- **Links without a parent are repaired:** a link whose parent is missing showed at the top of the sidebar and was hidden in Master links. Every sync now moves it under its nearest remaining parent, or to the top level. Revert modified links does the same.
- **Removed built-in parent:** when sync removes a built-in link, a custom link under it moves up one level instead of being lost.
- **Repeated links:** a link stored twice is kept once after sync.
- **Unchanged:** sync still keeps edited links, custom links and the current order, unless the user chooses otherwise.

# Testing Focus

- **Custom link on a built-in URL:** delete the built-in Intelligence under Integrations. Add a custom link with the link `/agents` under Integrations. Sync from YMLs. The AgenticAI links appear under the custom link in both views. Nothing new appears at the top of the sidebar.
- **Back to built-in:** delete the custom link and sync. The built-in Intelligence and its links come back.
- **Order:** compare each sidebar group with Master links, with and without a profile.
- **Regression:** sync with and without "Preserve current ordering", sync with an edited link (Skip and Override), Revert modified links, and Sync app navigations.
