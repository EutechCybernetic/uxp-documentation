# UI Bundles
Once you have built your widgets, user journeys and other UI components, you need to package them as a bundle and publish to Lucy.

All your code and stylesheets (and optionally resources embedded in stylesheets, depending on how you set it up) will be compiled by webpack and packaged into a single javascript file.

In addition - you will need to define metadata in a bundle.json file in your project root directory.

## Compiling and packaging your code and resources

The easist way to generate the final output javascript file would be to use webpack. Webpack is already installed as part of the starter project template.

Use the following:

```bash
npx webpack
```

This should generate a `main.js` file in a directory called `dist/` within your project root.

This contains the final output code.

## Preparing the bundle.json file
When you initialize a new project, a bundle.json file will be generated and available in the project root directory.

It should look something like this:

```json
{
    "id":"8d9be51e-07c3-45da-8c34-28670ff41077",
    "author":"",

    "widgets":[],
    "sidebarLinks":[]
}
```

You will notice that an `id` has been generated for bundle. This is a unique uuid that represents this particular bundle.
It gets generated when you initiate a new project.
This id is used by Lucy to uniquely identify your bundle. When you [publish](publishing) your bundle, if a bundle with the same id exists on the server (maybe because you have already uploaded it previously) it will be overwritten with this one when you upload it.

These are the elements of the bundle.json configuration:

| element | description |
|----------| ------------|
id | The unique identifier for this bundle. It should be a uuid
author | The author id for the developer publishing this bundle. This should be unique to your organization
widgets | A list of widget definitions for widgets being published. There should be one entry for each widget
sidebarLinks |  Metadata for sidebar links being published.


## Defining Widget Metadata
The `widgets` section contains an array of metadata - one item for each widget being published.

An example of a configuration that publishes one widget:


```bash
{
    "id":"8d9be51e-07c3-45da-8c34-28670ff41077",
    "author":"eutech",

    "widgets":[
        {
            "id":"helloworld",
            "title":"Hello World Widget",
            "description":"This widget displays a simple message in a widget",
            "tags":["introduction","example"]
        }
    ],
    "sidebarLinks":[
      
    ]
}
```

Each widget item has the following elements:

| element | description |
|----------| ------------|
id |This is the unique id for your widget. It is the _same_ id you used in the `registerWidget` function when you created your [widget](widgets)
title|A title for the widget. This is displayed in the widget gallery when users browse for widgets to add to their dashboard
description | A slightly expanded description of what your widget does. It appears in widget gallery
tags | A list of tags associated with this widget. Used for searching for widgets in the gallery








