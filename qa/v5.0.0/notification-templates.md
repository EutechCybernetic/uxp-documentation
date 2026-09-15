# Notification Templates

Stored message definitions — subject, email body, SMS short message, per-language localized messages, attachments, From address, and email/SMS enable switches — keyed by Object Type + template name.

- **Location:** **Administration > Notifications > System Notification Templates** and **> Custom Notification Templates** (MessagingConnector-owned).
- **Create/Edit:** Email and SMS enable switches; per-language messages with a "Copy from default language" action; attachments; From address picker.
- **Import/Export:** Import button accepts an XML package; each row has an Export action. Test the export → re-import round trip on both lists. Legacy v4 packages must still import (custom templates upsert by TemplateID).
- **Object Type Dropdown:** Labels are deduplicated (app name shown in brackets when the same label exists in several apps) — display only; verify saved templates still bind to the correct object type.
