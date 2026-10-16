# Lucy Connectors: Information Tab

The connector **Information** tab looks like the v4 connector page instead of a list of fields.

- **Ticket:** [LPVR-387](https://eutech.atlassian.net/browse/LPVR-387).
- **Where:** **Lucy > Connectors**, open a connector, **Information** tab. Web service and on-premise connectors.

# What It Shows

- **Tags:** the version (for example `v2.0.0`). Web service connectors also show the auth type, and **Custom Authorization Button** when one is set.
- **Description:** rendered as markdown. An empty one shows "No description".
- **Icon:** the connector icon, large and faint, at the bottom right. A broken icon link shows nothing.
- **Not repeated:** the name and type stay in the panel header only. Icon URL and button URL are in **Edit** only.

# Toolbar

- **Web service:** **Edit**, **Global OAuth Settings**, **Export**, **Delete Web Service**, as before.
- **On-premise:** **Edit**, **Download** (only when the connector has a download link), **Export**, **Delete Connector**.

# Testing Focus

- A web service connector with OAuth and a custom button (Google Sheets).
- A connector with markdown in its description: edit it and check the rendering.
- An on-premise connector with and without a download link.
- A connector with no icon or a broken icon link.
- Other tabs in the same panel look as before.
