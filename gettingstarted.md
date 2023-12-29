Getting Started with Development
==============

Developing widgets, sidebar actions and general user interfaces is done using the Lucy Experience Portal toolkit.

Developers can build out and test their UIs locally in their development environment without having to set it up on servers.
Once ready, the developer needs to package up the UIs into a bundle and upload it to the server where it will be made available.




Installation
------
To get started with a new project, run the following:

```bash
npx lucy-xp init <project-name>
```

This will generate a new folder called `<project-name>` and will create one widget inside it.

Follow the instructions that come when you run that command to build and test this project:

```bash
cd project-name
npm install
npm run dev
```


The `npm install` command installs all the required packages.
The `npm run dev` command runs a development server for you to test your code.

Once that command is run - you can access a sample portal screen at the url it prints on the console (usually `http://localhost:8080`).


You will notice a blank screen with a toolbar on top. You can click the hamburger menu on the top right corner and then click   'Cards Available' and then choose your widget and add it to the dashboard.


Developing Your Widgets
-----
If you look at the index.tsx file that was created in your project - you can see that one react component was created that reprents your widget. And a `registerWidget` function is called to register the widget and make it available to add to the dashboard.