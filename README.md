# Welcome

uxp is the frontend framework of iviva. In v4 it was only the dashboard and widget layer that ran inside the
portal; in v5 it is the whole frontend: the application shell, routing, application views, dashboards and
widgets are all uxp.

This site documents v5. It is organised as three guides.

## User Guide

For administrators and users who configure and run the platform. It starts with navigation and routing: how
the links in the sidebar are built, how master links and navigation profiles work, how to add custom routes,
and who gets to see what.

## Developer Guide

For developers building on iviva. It has three sections:

- **Building iviva apps**: what changed in v5, building a v5 app end to end, and migrating a v4 app.
- **Building UIs and widgets with uxp**: registering components, writing UI views and dashboard widgets,
  talking to Lucy, real-time messaging, bundles and publishing, and the `lucy-xp` CLI.
- **Component reference**: the generated API reference for every component, hook, type and function exported
  by the `uxp/components` library.

### Prerequisites

The toolkit is [TypeScript](https://www.typescriptlang.org/docs/) and [React 18](https://react.dev), so you
should be comfortable with both before you start. You will also need:

- Windows, macOS or Linux
- Node.js 20 or later

Visual Studio Code is the recommended editor; the type definitions shipped with the library give you
completion and inline documentation for every component.

## QA Guide

For testers. It records what changed in each release and what to test, feature by feature.

## Resources

- [UXP Releases](https://help.iviva.com/uxp-releases)
- [GitHub](https://github.com/lucy-uxp)
- [Support](https://iviva.com/support)
