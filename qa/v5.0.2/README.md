# v5.0.2

Patch release: bug fixes on top of [v5.0.0](../v5.0.0/README.md) and [v5.0.1](../v5.0.1/README.md); everything there still applies.

Changes are grouped by app. Each entry says what was wrong and what changed, so tests can be planned from it.

# User

### Password notification not sent when a template is configured

| | |
|---|---|
| **Where:** | Users > Register User, with **Allow user to manage password** and **Send notification to the user to configure own password** ticked. |
| **Issue:** | No email reached the new user and no row appeared in the Email Queue. A text message was still sent when **Receive messages as texts** was ticked. Ticking the notification showed **Receive messages by email** as ticked and greyed out, but it was saved as off, and the password email only goes to users who have that setting on. |
| **Ticket:** | [LPVR-1034](https://eutech.atlassian.net/browse/LPVR-1034) |
| **Fix:** | Ticking the notification now also saves **Receive messages by email** as on, as v4 did. Email and SMS both go out. |
| **Note:** | Users created before this release keep what was saved at the time. If a user never got their password email, turn **Receive messages by email** on from **Edit User > Other Settings** and use **Register Password** again. |

# Lucy

### Debugger showed every execution as selected and never opened the steps

| | |
|---|---|
| **Where:** | Lucy > Models > open a model > **Debug** > **Debugger** (Recent Executions). |
| **Issue:** | On servers where the Lucy debug log is kept in MongoDB (`LucyEngine.DebugDataStore` set), clicking an execution turned every row blue and the steps never opened. Dates showed in raw ISO form, and every row could show **Running**. Servers using the default database store were not affected. |
| **Ticket:** | [LPVR-1043](https://eutech.atlassian.net/browse/LPVR-1043) |
| **Fix:** | The debugger now works the same on both stores, as the v4 designer did. Clicking an execution opens its steps. Clicking a step highlights only that step and shows its inputs and outputs. The steps also load when the page is reloaded or the link is shared. Dates are formatted on both stores. |
| **Also changed:** | Execution rows no longer have a selected state; a click always opens the steps. Scrolling the execution list now loads further pages on both stores. Before, only the first 50 executions ever showed. |
| **Worth checking:** | Test on one server of each store type: open an execution, step through with the arrows, reload on the steps view, filter and search, and scroll past 50 executions. |
| **Note:** | The step list on a MongoDB server needs the matching server build. A server running an older build shows **No Items Found** for every execution. |

### Web service connector logs showed only 10 entries, oldest first

| | |
|---|---|
| **Where:** | Lucy > Connectors > open a web connector > **Logs**. Logging must be on for the method. |
| **Issue:** | Only the first 10 logs showed, oldest first. Search only looked at those 10. After a page reload, or after returning from a log's details through the breadcrumb, the list was empty until another tab was opened. |
| **Ticket:** | [LPVR-1048](https://eutech.atlassian.net/browse/LPVR-1048) |
| **Fix:** | The list pages through all logs, newest first. Search runs on the server, so it finds older entries too. The list loads after a reload and after coming back from log details. |
| **Worth checking:** | A connector with more than 10 logs: page forward and back, search for an older entry, reload on the Logs tab, open a log and go back. |

### Web service blocks had no View Logs or Go to connector in the model designer

| | |
|---|---|
| **Where:** | Lucy > Models > open a model > select a web service block > property panel, **Links** section above Block ID. |
| **Issue:** | v4 showed **View Logs** and **GoTo Connector** on web service blocks, and **Configure this connector** on blocks whose connector sets a config URL. v5 showed none of them. |
| **Ticket:** | [LPVR-1063](https://eutech.atlassian.net/browse/LPVR-1063) |
| **Fix:** | A **Links** section lists each link with its label on the left and an icon button on the right. **View Logs** opens a panel over the canvas with this block's logs only; a row opens its details, and **Logs** in the breadcrumb goes back. **Go to connector** opens the connector in a new tab. **Configure this connector** shows where the connector defines a config URL. |
| **Worth checking:** | View Logs on two blocks that call the same method: each shows only its own calls. Reload while the logs panel is open: it opens again. Switch to another left panel or close the designer: the logs panel closes. A long link label is cut short and shows in full on hover. |
| **By design:** | On-prem connector blocks have no links, as in v4. |

### Dates showed in raw server format instead of the account date format

| | |
|---|---|
| **Where:** | Lucy connector logs and log details, instance **Last Heartbeat**, Monitor queue jobs and file manager jobs, Settings import history, model designer version list, execute history and Debugger lists, and collection grid date cells. |
| **Issue:** | Dates showed as raw values such as `2026-09-23T05:58:22Z`, or in the browser's own format. |
| **Ticket:** | [LPVR-1064](https://eutech.atlassian.net/browse/LPVR-1064) |
| **Fix:** | All these dates use the account's date and time format and timezone. |
| **Worth checking:** | Change the account date format or timezone and check each screen follows it. |
| **By design:** | Execute history still titles each run "x minutes ago"; hovering shows the full date. Date pickers are unchanged. |

### Connector calls kept using old credentials after a token refresh or account edit

| | |
|---|---|
| **Where:** | Any model action that calls a web connector method. Seen on OAuth connectors such as Google Sheets. |
| **Issue:** | With logging on, every run logged a **401** followed by a **200**. The first call used an expired token, then the token was refreshed and the call retried. Changing an account's credentials (Basic, API key or OAuth) had no effect until the connector was saved or the Lucy engine restarted. |
| **Ticket:** | [LPVR-1065](https://eutech.atlassian.net/browse/LPVR-1065) |
| **Fix:** | Stored connector details are refreshed whenever credentials change: after a token refresh, a re-authorisation, an account create, edit or delete, and a global OAuth change. |
| **Worth checking:** | Run an OAuth connector action twice: the second run logs one **200**. Edit a Basic or API key account and run once: the new credentials are used without a restart. Delete an account: it deletes without error. |
| **Note:** | The first run after an access token expires still logs 401 then 200. That is the normal refresh. |

### OAuth tokens were written to the Lucy engine log

| | |
|---|---|
| **Where:** | The Lucy engine log on the server, when a connector gets or refreshes an OAuth token. |
| **Issue:** | The full token response was logged, including access and refresh tokens, and the signed request for Google service accounts. |
| **Ticket:** | [LPVR-1066](https://eutech.atlassian.net/browse/LPVR-1066) |
| **Fix:** | The log keeps only the status plus the token type, expiry, scope and any error. |
| **Worth checking:** | Trigger a token refresh and read the engine log entry: no token values appear. Authorise a new OAuth account: the connection still works. |

# System

### A missing or unusable notification template is not reported

| | |
|---|---|
| **Where:** | Users > Configuration > **App Configuration > Notifications**, where the password templates are chosen. Templates live under **Administration > Notifications > System Notification Templates**. |
| **Issue:** | If the chosen template had been deleted, or had no recipients configured, nothing was sent and the screen still said the email was on its way. Nothing was written anywhere, so a delivered notification and a lost one looked the same. |
| **Ticket:** | [LPVR-1049](https://eutech.atlassian.net/browse/LPVR-1049) |
| **Fix:** | The action now reports the problem instead of success, writes an error to the server log, and raises an in-app notification for the admin who triggered it. Two messages: the template no longer exists, and the template has no recipients. |
| **Worth checking:** | Every path that sends a password message: **Register User** with the notification ticked, **Register Password** and **Reset Password** on an existing user, and **Forgot your password?** on the login page. Test each one twice: with a working template, and with the template deleted. Bulk user import and mobile self-registration must still finish either way. |
| **Note:** | Creating a user still succeeds. The user is created and the form closes; the template problem appears as its own message beside the **User created** confirmation. The in-app notification only shows in the bell if a notification category covers it. **Forgot your password?** runs with nobody signed in, so it raises no in-app notification; it now reports "Password reset email could not be sent. Please contact your administrator." instead of saying the email was sent. |

# Framework

### A field kept its error after the setting that made it mandatory was turned off

| | |
|---|---|
| **Where:** | Any form where a field is only mandatory because of another field. Reported on Users > Edit User > Other Settings; also affects **My Profile**, the navigation link editor and similar forms. |
| **Issue:** | Clearing **Email** while **Receive messages by email** was on gave "This field is required". Unticking the checkbox left the error on screen, even though the field was no longer marked mandatory. On **My Profile**, correcting **New Password** left "passwords do not match" under Confirm Password. The save itself worked; only the message was stale. |
| **Ticket:** | [LPVR-1035](https://eutech.atlassian.net/browse/LPVR-1035), follows on from [LPVR-1004](https://eutech.atlassian.net/browse/LPVR-1004) |
| **Fix:** | Fixed once in the form framework rather than screen by screen. When a field changes, any other field already showing an error is re-checked and the error cleared if it no longer applies. Errors are only ever removed this way, so ticking a box again with its field empty still blocks the save, and messages coming back from the server are left alone. |
| **Also changed:** | Forms with tabs no longer move you to another tab while you type. You are taken to the tab holding an error only when you press **Save**, or **Next** in a create wizard, or when the server returns an error against a field. In a create wizard, pressing **Next** on a valid step no longer bounces you back to an earlier step. |
| **Worth checking:** | Any form with conditionally mandatory fields — Edit User, My Profile, the navigation link editor, dashboard create/edit and the Lucy connector forms. |
