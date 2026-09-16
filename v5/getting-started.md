# Getting started

Four pages, in order. By the end you have a running framework, an app with a `Configuration.yml` and a
views project, one registered view, and a navigation link that renders it at its own route.

| Page | What you do |
|---|---|
| [Setup Development Environment](./setup-environment.md) | Install the prerequisites, build and run the framework, point it at your apps repository and enable v5 apps |
| [Migration Setup](./migration-setup.md) | Create the `Resources/views` project and `Configuration.yml` for an app, whether it is new or an existing v4 app |
| [Create Your First View](./first-view.md) | Write a React view, register it with `registerComponent`, and add its `bundle.json` entry |
| [Add Navigation and Validate](./first-navigation.md) | Declare the navigation link and route, build the app, and check that the page renders |

## Before you start

You need Node.js 20 or later and a working iviva framework checkout. The prerequisites are listed on
[Setup Development Environment](./setup-environment.md).

Registration ids are case-sensitive and have to match in three places — the `registerComponent` id, the
`bundle.json` entry and the `pageId` in `Configuration.yml`. A blank page with no error is almost always
that mismatch; [Troubleshooting](./troubleshooting.md) lists it first.

## Where to go next

- [Core concepts](./core-concepts.md): `Configuration.yml`, navigation and the component registry in full
- [Data & Services](./data-and-services.md): loading data into the view you just built
- [Building UIs and widgets with uxp](../uxp/introduction.md): the standalone bundle path, if you are not
  working inside an app
