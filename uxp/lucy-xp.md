# lucy-xp CLI

`lucy-xp` is the command line tool for standalone bundle projects. It scaffolds a project, uploads a built
bundle to an account, moves Lucy model files back and forth, and fetches offline assets.

## Running it

Run it straight from npm with no install:

```bash
npx lucy-xp <command>
```

Or add it to the project and run it from `node_modules`:

```bash
npm install -D lucy-xp
```

## Connecting to an account

Every command that talks to a server takes the same three options:

| Option | What it is |
|---|---|
| `--lucy-url <url>` | The account's full URL |
| `--lucy-apikey <apikey>` | An API key generated on that account |
| `--lucy-env <file>` | A JSON file holding `url` and `apiKey`, instead of the two flags above |

If you pass none of them, the CLI looks for `.lucyxp.config` (or `.spaceworx.config`) beside the file you
are acting on and reads `url` and `apiKey` from it. The flags override the file. Keep the file out of
version control.

## Commands

### `init <project> [--env v5]`

Creates a new project folder from a template, and downloads the matching `uxp.d.ts` into it.

```bash
npx lucy-xp init my-project --env v5
```

`--env` defaults to the older pre-v5 template, so pass `--env v5` for anything new. See
[Getting started](./getting-started.md).

### `upload [dist.js] [bundle.json]`

Uploads a built bundle to an account. Both paths are optional and default to `./dist/main.js` and
`./bundle.json`.

```bash
npx lucy-xp upload dist/main.js bundle.json --lucy-url "https://myaccount.iviva.cloud" --lucy-apikey "SC:..."
```

Uploading a bundle whose id already exists replaces it. See [Publishing](./publishing.md).

### `upload-models [model-or-folder]`

Uploads Lucy model files to an account. Pass a single file, or a folder to upload everything in it.
Defaults to `./models`.

### `download-models [model-or-folder] [--models <names>]`

Downloads Lucy model files from an account into a folder, defaulting to `./models`. With `--models` you name
the models to fetch as a comma-separated list, instead of refreshing the files already on disk.

### `create-common-component [folder]`

Scaffolds a shared component project from a template, in a new folder of that name. The generated README
explains how to use it.

### `offline-resources [--profile <profile>] [--output <dir>] [--delete]`

Syncs the UXP offline resource set from S3, downloading only what is missing or changed. `--profile` names
an aws-vault profile to authenticate with, `--output` skips the interactive prompt for a destination, and
`--delete` removes local files that are no longer in the bucket without asking.

### `download-font [family]`

Downloads a Google Font for offline use, prompting for weights, subsets and the output directory.

### `lint`

Passes everything after it straight through to `@iviva/uxp-lint`, so `npx lucy-xp lint rules` behaves the
same as running the linter directly. See [Tooling](./tooling.md).

## Where to go next

- [Getting started](./getting-started.md): `init` and the project it produces
- [Publishing](./publishing.md): `upload` in context, and the alternative through the UXP app
- [Tooling](./tooling.md): the linter this CLI can run for you
