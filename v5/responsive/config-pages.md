# Configuration pages on phones

On phones, a `ConfigurationView` with sections works like a phone's settings app.

- The page opens on the **list of sections**.
- Tapping a section opens it full screen. The app header shows the section name. The footer **Close** bar goes back to the list.
- The section's own navigation sits in one bar at the bottom: its tab slider, then its buttons (Save, Cancel). One or two buttons show with their labels. Three or more go in a **⋯** sheet.
- The section header's title is hidden on phones, because the app header already shows it.
- Lists inside a section (`ObjectSearchComponent`, `SimpleConfigurationTable`) keep their own toolbar at the bottom. The section's buttons join the end of that toolbar, so there is one bar. One or two buttons show as icons. Three or more go in a **⋯** sheet.
- A **Help** button (`HelpPopover`) in the ⋯ sheet shows as a row with its title. It opens the help in its own sheet.
- Filters or other inputs among the buttons show in the ⋯ sheet as they are.

On the web nothing changes.

## What your app does: `urlParam`

**When you need it:** your code reads the section from the URL and fills in a default (like `section || 'general'`). The view then always gets a section, so phones skip the list. If your page keeps the section in its own state, nothing is needed.

Give the view the name of the URL value that holds the open section.

- The view reads that value and writes it when the user picks a section.
- On a phone, **Close** removes it, so the page goes back to the list.
- A link or a reload opens that section.
- With no value, phones show the list and the web shows the first section.

```tsx
<ConfigurationView
    uxpContext={context}
    title="Settings"
    urlParam="section"
    sections={sections}
/>
```

You don't pass `selected`, `onChangeSection` or `onCloseSection`. You don't read the URL yourself.

**Other URL values that belong to a section**, such as its tab: list them in `sectionParams`. They are cleared when the section changes or closes.

```tsx
<ConfigurationView urlParam="section" sectionParams={['tab']} … />
```

**Load only the open section:** give `content` as a function. It runs only while its section is open. Hidden sections don't mount and don't fetch data.

```tsx
{ id: 'defaults', title: 'Defaults', content: () => <DefaultsTab /> }
```

### Before

```tsx
const { section } = useSearchParams<{ section?: string }>();
const selected = section || 'general';

<ConfigurationView
    uxpContext={context}
    title="Settings"
    sections={[
        { id: 'general', title: 'General', content: selected === 'general' ? <General /> : null },
        { id: 'defaults', title: 'Defaults', content: selected === 'defaults' ? <Defaults /> : null },
    ]}
    selected={selected}
    onChangeSection={(id) => navigate(generateURL({ searchParams: { section: id } }))}
/>
```

### After

```tsx
<ConfigurationView
    uxpContext={context}
    title="Settings"
    urlParam="section"
    sections={[
        { id: 'general', title: 'General', content: () => <General /> },
        { id: 'defaults', title: 'Defaults', content: () => <Defaults /> },
    ]}
/>
```

## Without `urlParam`

The view still works with `selected` and `onChangeSection`.

- **Section kept in your own state:** nothing else is needed. Close goes back to the list.
- **Section kept in the URL by your own code:** pass the URL's value as it is, with no default. Add `onCloseSection` that removes it. Otherwise a phone opens your default section instead of the list.

`mode="single"` pages need no change. On phones the page works like an open section: the title is hidden and the buttons go to the bottom bar (or the list's toolbar). There is no Close bar.

## Layout tips for section content

- **Wrap a section's content in one element.** On phones that element fills the section. Tables and tabs inside it reach the bottom of the screen.
- **Use `ConfigurationViewHeader` for the section's title and buttons.** On phones its buttons move to the bottom bar by themselves. Your own heading and button row would stay at the top.
- **Use `TabComponent` for tabs.** On phones its slider joins the section's bottom bar.
- **Use `TabSectionHeader` for a tab's title and buttons.** See [Tabs, forms and dialogs on phones](tabs-forms-dialogs.md).

## Check it

1. Open Chrome device mode at a phone size (390 × 844).
2. Open the page with no section in the URL. You should see the list of sections.
3. Open a section, then press **Close**. You should be back on the list. The URL should have no section.
4. Reload with a section in the URL. That section should open directly.
