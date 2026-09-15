# Data Export (Streaming)

Architectural change to list exports: the Export action on searchable lists now streams CSV through the server — the download starts immediately and rows continue arriving in the background. Data fetching and formatting stay client-side; the server is only a pipe.

- **Testing Focus:**
  - The export respects the active view — filters, sort, search and visible columns.
  - Navigating within the app does **not** interrupt an export; a banner shows while one is in progress.
  - A hard reload/refresh cancels it: a confirmation prompt appears, and a cancelled file ends with an "EXPORT CANCELLED - FILE INCOMPLETE" marker. There is no resume, by design.
- **Offline Deployments:** Test exports in an offline deployment as well — the pipe is designed to work without HTTPS and behind load balancers.
