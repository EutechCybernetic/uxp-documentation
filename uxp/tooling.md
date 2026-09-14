# Tooling

Three things make day-to-day work with uxp easier: the linter, Storybook and the generated reference.

## uxp-lint

`@iviva/uxp-lint` checks a v5 project against the patterns the reference apps follow. It is not a
general-purpose linter with an iviva rule bolted on; it knows about `Configuration.yml`, `bundle.json` and
the app folder layout as well as the code.

| Group | What it checks |
|---|---|
| `Configuration.yml` | `pageId` format, navigation group structure, duplicate links, `otherRoutes` redirects |
| `bundle.json` | Label and component key consistency, id sync with the registrations, localization order |
| Bulk imports | A `name` attribute on the root XML element |
| Folder structure | One `.tsx` per `views/` subfolder, forms in `forms/`, a `services.ts` present |
| Code quality | TypeScript and React recommended rules, plus custom UXP rules |
| Formatting | Every `.ts`, `.tsx` and `.scss` file matching the project's Prettier config |
| SCSS | App-prefixed class naming, no top-level `.uxp-*` overrides |
| Bundle size | `dist/main.js` under the configured limit, 1 MB by default |
| Duplicate code | Clones of 10 lines or more |

Install it in the project and run it from a script:

```bash
npm install -D @iviva/uxp-lint
npm run lint
```

The v5 scaffold already has `lint` wired up, and runs the linter after every build.

Two commands worth knowing:

```bash
uxp-lint rules                    # every rule, with its severity
uxp-lint rules uxp/no-fa-prefix   # one rule: what it means, why, and how to fix it
uxp-lint fix                      # apply the deterministic quick fixes
```

Configuration lives in `.uxplint/config.json` at the app root. On the first run, if there is no config, an
interactive wizard writes one. It records where the views, `Configuration.yml` and `bundle.json` are, the
app's SCSS class prefix, and any rule severities you want to override.

There is also a VSCode extension, which shows the same problems inline as you type and offers the quick
fixes as code actions.

[Lint and scoped CSS](../v5/lint-and-scoped-css.md) covers setup on an existing app and the scoped CSS rules
in detail.

## Storybook

Every component in the library has a live Storybook story at
[uxp-components.vercel.app](https://uxp-components.vercel.app). Each page of the component reference embeds
that component's story at the top, so you can see and interact with the real component while you read its
props.

Use it to check what a component looks like before you write the code around it, and to see which variant of
a component you actually want.

## uxp.d.ts

`uxp.d.ts` in your project root is what makes `import { ... } from 'uxp/components'` type-check. It is a
snapshot of the library's public API, taken at the version you scaffolded, not a live view of it.

That means it drifts. A component or prop added to the library after your snapshot will not be in it, and
your editor will report an error for code that runs perfectly well. When that happens, refresh the file
rather than working around it: `build-types.sh` in the uxp repo regenerates `dist/uxp.d.ts` from the current
source, and that file is what your project needs a copy of.

If a symbol is missing and a refreshed `uxp.d.ts` still does not have it, the export is genuinely missing
from the library rather than from your snapshot.

## The component reference

The reference pages are generated from the library source, so they are always in step with the version they
were built from.

| Reference | What is in it |
|---|---|
| [Components](../components.md) | Every component: description, import, props table, examples, live demo |
| [Hooks](../hooks.md) | Every hook, with its signature and usage |
| [Types](../types.md) | Every exported interface and type |
| [Functions](../functions.md) | Every exported helper function |

Look here before writing a component of your own. Most of what a screen needs already exists, and using the
library component is what keeps screens consistent across apps.
