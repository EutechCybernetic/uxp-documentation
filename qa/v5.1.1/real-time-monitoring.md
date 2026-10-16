# Lucy: Real-Time Monitoring

The v4 real-time monitor is now a v5 page. The v4 page works again.

- **Ticket:** [LPVR-388](https://eutech.atlassian.net/browse/LPVR-388).
- **Where:** **Lucy > Monitor > Real-Time Monitoring** (`/view/lucy/monitor/real-time`). Same access as the other Monitor pages.

# v4 Page Fixed

- **Before:** `/Apps/Lucy/monitor` showed nothing. Every feed failed on the server.
- **Now:** turning on a feed shows "Connection made", then live messages.

# The v5 Page

- **List:** Time, Feed, Event and Message. Newest first. Search, and 50 rows per page.
- **Filters, Feeds:** **Event Stream** (Lucy events) and **Debug Blocks** (debug blocks in Lucy flows). Turn on, then **Apply**. The filter button shows how many feeds are on.
- **Filters, Display:** **Show local time**. Off: the user's site time. On: the browser's time.
- **Clear:** empties the list. The feeds stay on.
- **Kept:** the newest 500 messages, as v4. Leaving the page turns the feeds off.

# Testing Focus

- Turn on Event Stream, then log in as another user. Expect a `System.UserLogin` row.
- Turn on Debug Blocks and run a Lucy flow with a debug block.
- Search, paging past 50 rows, Show local time, Clear.
- The v4 page `/Apps/Lucy/monitor` with both feeds on.
