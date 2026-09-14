# Publishing

This page covers standalone bundles: getting your `dist/main.js` and `bundle.json` onto an account so its
components are available there. If your components live inside an iviva app, the app deploys them and this
page does not apply. See [Build and deploy](../v5/build-deploy.md).

## Build

```bash
npm run build
```

Webpack writes `dist/main.js`. Check that every component you register has an entry in `bundle.json` before
you upload: see [Bundles](./bundles.md).

## Upload from the command line

```bash
npx lucy-xp upload dist/main.js bundle.json \
    --lucy-apikey "SC:myaccount:1234" \
    --lucy-url "https://myaccount.iviva.cloud"
```

| Argument | What it is |
|---|---|
| `dist/main.js` | The compiled bundle. Defaults to `./dist/main.js` if you leave it out |
| `bundle.json` | The bundle metadata. Defaults to `./bundle.json` if you leave it out |
| `--lucy-url <url>` | The full URL of the account you are uploading to |
| `--lucy-apikey <apikey>` | An API key generated on that account |
| `--lucy-env <file>` | Read the URL and key from this file instead of the flags |

Rather than repeating the URL and key on every upload, put them in a `.lucyxp.config` file beside your
`bundle.json`:

```json
{
    "url": "https://myaccount.iviva.cloud",
    "apiKey": "SC:myaccount:1234"
}
```

`lucy-xp upload` picks it up automatically. `--lucy-url` and `--lucy-apikey` still override it when you pass
them, which is how you push the same build to a second account. Keep the file out of version control: it
holds a credential.

## Upload from the UXP app

An account administrator can upload a bundle without the CLI: open the **UXP** app, go to **Settings** and
then **Manage Bundles**. The page lists the bundles on the account and lets you upload a new one by picking
two files, the `.js` and the `.json`, and confirming.

This is the right path when whoever is deploying does not have the project checked out, and it is a quick way
to confirm what is currently on an account.

## Re-uploading

Uploading a bundle whose `id` already exists on the account replaces it. That is how you ship an update:
build, upload, done. Keep the `id` stable for the life of the bundle. Changing it creates a second bundle
rather than updating the first, and every placed instance of the old components keeps pointing at the old
one.

## Cache

There is nothing to clear. Bundles are served at content-hashed URLs, so a new upload gets a new URL and
every browser picks it up on the next page load. Users do not need to hard-refresh and you do not need to
bust a cache.

## Where to go next

- [Bundles](./bundles.md): what goes in `bundle.json`
- [lucy-xp CLI](./lucy-xp.md): the rest of the CLI
- [Build and deploy](../v5/build-deploy.md): the app path, which ships differently
