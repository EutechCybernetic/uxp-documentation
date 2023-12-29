# Widgets

Dashboards are composed of widgets. Widgets are small self-contained cards that can display visualizations, data and allow users to take actions.

Users can add widgets to their dashboard from the hamburger menu on the top right.

Widgets can be dragged around and resized.

There are 3 steps to making a widget:

1. Building the widget component
2. Registering it
3. Declaring metadata in your [bundle](bundles)


## Building Widgets
Widgets are standard react components. The component takes a single property `uxpContext` which points to a [Context](context) object.

You can declare your props like this:

```tsx
interface IWidgetProps {
    uxpContext?: IContextProvider
}
```

The dashboard will pass a context to your widget when it is rendered.

Here is a sample widget component:

```tsx
const HelloWorldWidget:React.FunctionComponent<IWidgetProps> = (props) => {
    return <div className='hello'>Hello World</div>;
}
```

Typically you would want your widget component to have a standard border around it to maintain consistency with other widgets.
The [WidgetWrapper](components/WidgetWrapper) component can be used for this.


```tsx
const HelloWorldWidget:React.FunctionComponent<IWidgetProps> = (props) => {
    return <WidgetWrapper>
        <div className='hello'>Hello World</div>
    </WidgetWrapper>;
}
```


You will also typically want to have a title bar in your widget as most widgets have one.
There is a standard [TitleBar](/components/TitleBar) component that you can use for this.


```tsx
const HelloWorldWidget:React.FunctionComponent<IWidgetProps> = (props) => {
    return <WidgetWrapper>
        <TitleBar title='My First Widget' />
        <div className='hello'>Hello World</div>
    </WidgetWrapper>;
}
```


## Registering Widgets

Once your widget is built - you need to register your component as a widget.
This includes setting up a unique id for your widget, mapping to your React component. You can also add other configuration here like the default size of your widget, whether or not it supports resizing, and if it requires any configuration parameters.

You need to use the `registerWidget` function for that.

A simple example:

```tsx
registerWidget({
  id:'helloworld',
  name:'Hello World Widget',
  widget:HelloWorldWidget,
});
```

*Note: The id you give for your widget must be unique among all interfaces declared in your [bundle](bundles).*


## Defining widgets in your bundle

Registering a widget is sufficient for testing your changes locally. When [publishing](publishing) your changes to a server, you will have to provide extra metadata. These go into the [bundle.json](bundles) configuration which would be in your root project directory.



