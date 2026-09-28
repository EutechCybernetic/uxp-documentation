# v5.0.3

Patch release: bug fixes on top of [v5.0.2](../v5.0.2/README.md). Everything in earlier releases still applies.

Changes are grouped by app. Each entry says what was wrong and what changed, so tests can be planned from it.

# System

### Dates and times: user's time zone, zone shown, one format everywhere

| | |
|---|---|
| **Where:** | Every v5 screen that shows a date and time. Reported on Administration > Notifications > **Email Queue** and **SMS Queue**. |
| **Issue:** | SMS Queue showed raw UTC times, such as `2026-09-23T03:53:01Z`. Email Queue converted to the user's time zone but did not say which zone. v4 printed the zone after every date and time. Several other screens showed raw server values or used the browser's own date format and time zone. Users whose site is on UTC saw their browser's local time instead of UTC. |
| **Ticket:** | [LPVR-1000](https://eutech.atlassian.net/browse/LPVR-1000) |
| **Fix:** | Dates and times use the account date and time format and the time zone of the user's site. The zone abbreviation follows in brackets, for example `2026/9/23 09:23 (IST)` or `2026/9/23 9:23 AM (IST)`. Sites on UTC now show UTC. |
| **Also changed:** | These screens now follow the account format and zone. Before, they showed raw values or used browser formatting: **SMS Queue**; Monitoring > **Scheduled Tasks** (Last run, Next run) and **Subsystem Logs** (Time); Platform > **Reporting** (Uploaded on, now with the time); **Scheduled Reports** (Last Run, now with the time); System Configuration > **Bulk Uploads** (import date); Advanced > **Cache Management** (Cached at); **Documents** (Uploaded date, which used a fixed `yyyy-MM-dd hh:mm a` pattern); My Profile > **API Keys** (Generated). Screens that already used the account format now also show the zone, for example Users > Last Active, Inbox, and the Lucy logs, monitor and debugger. |
| **By design:** | Date-only and time-only values have no zone. The **Run Time** of a scheduled report is shown exactly as it was entered, because it belongs to the schedule's own **Timezone** column. It is not converted to the user's zone. Relative times such as "5 minutes ago" in Lucy's execute history are unchanged; hover shows the full date. |
| **Worth checking:** | Compare a time with the raw UTC value: it is shifted by the site's offset. Change a user's site to a location in another time zone, sign in again, and check that the times and the abbreviation both change. Try a site on UTC. Switch the user between 12-hour and 24-hour time. Sorting by a date column still orders by time. |
| **Note:** | The abbreviation is the one set for the time zone in iviva, for example `IST` for India and `LK` for Sri Lanka. An instance whose server has not been updated to v5.0.3 shows the same times without the abbreviation. |

### Email Queue and SMS Queue: all messages listed, Send Email and Send SMS

| | |
|---|---|
| **Where:** | Administration > Notifications > **Email Queue** and **SMS Queue**. |
| **Issue:** | Both pages loaded only the newest 100 messages. The count stopped at 100, and older messages could not be reached. Search and the status filter only looked inside those 100 messages. v4 listed every message. v4 also had **Send Email** and **Send SMS** actions to check that delivery works. v5 did not have them. |
| **Ticket:** | [LPVR-1005](https://eutech.atlassian.net/browse/LPVR-1005) |
| **Fix:** | Both pages now page through the whole queue, 100 messages per page, newest first. The count shows the full number of messages. Search and the Email Queue status filter and views run across the whole queue. Email search matches To, CC, BCC, Subject and message text. SMS search matches phone and message text. |
| **New:** | **Send Email** button on Email Queue. It opens a form with To, CC, BCC, Subject and Message. To, Subject and Message are required. Separate several addresses with commas. Each To address is queued as its own email, the same as v4. **Send SMS** button on SMS Queue, with Phone and Message, both required. After sending, a confirmation shows, the form closes, and the list and count refresh. The new message appears at the top as Pending. The form stays open on refresh, because it is part of the page address. |
| **Access:** | Send Email needs the System role **cansenddirectemail**. Send SMS needs **cansenddirectsms**. Users without the role do not see the button. The server also refuses the send. Viewing the pages still needs **canviewemailqueue** and **canviewsmsqueue**. |
| **Details:** | Click a row in **SMS Queue** to open a details panel, the same as Email Queue. It shows the phone number, the status, the queued time, the sent time, the user, any error with its time, and the message. The eye icon at the end of each row is gone. The panel stays open on refresh, because the message key is part of the page address. |
| **By design:** | The columns can no longer be sorted. The queue is always newest first, the same as v4. Sorting one page of 100 would not sort the queue. The email form has no address suggestions while typing. v4 had them. |
| **Worth checking:** | A queue with more than 100 messages: the count, the next pages, and the last page. Search for a message older than the newest 100. Pick the Error view on Email Queue when the errors are older than the newest 100. Send with several To addresses and with CC and BCC. Send with a required field empty. Sign in as a user who can view the queues but has no send role. |

### My Inbox: recipient pictures, Sent Items filter, Related field

| | |
|---|---|
| **Where:** | My Inbox (`/view/user/inbox`). Inbox and Sent Items tabs, and the message details panel. |
| **Issue:** | Recipient profile pictures did not show in the message details. In Sent Items the Visibility column was empty. After you applied the "Include hidden messages" filter, the Sent Items tab listed inbox messages instead of sent ones. That is why Visibility then showed values. Dates had no time zone. |
| **Ticket:** | [LPVR-1006](https://eutech.atlassian.net/browse/LPVR-1006) |
| **Fix:** | Recipients show their profile picture. A recipient without a picture shows initials. After you hide or unhide a message, the counter above the list updates straight away. The filter panel has a new **Folder** field (Inbox or Sent Items). Applying the filter keeps the folder you are in. Sent Items no longer has a Visibility column. Visibility belongs to each recipient, so a sent message has no single value. Dates use the user's site time zone with the abbreviation, from the LPVR-1000 change. |
| **Known limitation:** | **Related to** is plain text. In v4 it opened the record's quick-info and linked to its page. This will be built as a feature in v5.1. |
| **Worth checking:** | Open a message sent to a user who has a profile picture, and one sent to a user who has none. In Sent Items, apply "Include hidden messages" and check that the list still shows sent messages. Change the Folder field in the filter and apply. In Inbox, hide a message, then check it is gone without the filter and listed with it. Check the Sent time, the list date, the header and the "Read" time show the zone abbreviation. |
