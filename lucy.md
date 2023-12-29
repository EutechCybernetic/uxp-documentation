# Interacting with Lucy

Your UI components can communicate with Lucy on the backend via remote API calls.
You can directly execute actions on Lucy models and do not need to explicitly call published APIs.

This is the recommended way of interacting with Lucy.

To execute Lucy actions, you need to get accesss to a [context](context) object from which you can execute Lucy actions.

You can call a Lucy Action using the `executeAction` function defined in the context.
This function returns a promise that resolves to the data that Lucy returns from the action you executed.

```tsx
    props.uxpContext.executeService('User','GetEmail',{'user':'admin'})
        .then(data => console.log(data))
        .catch(e => console.error(e));
```

Since it returns a promise, you can use async/await to call Lucy actions.

This example shows a complete component that displays the admin user's email address:


```tsx
const UserEmailWidget:React.FunctionComponent<IWidgetProps> = (props) => {
    let [email,setEmail] = React.useState('');
    async function getUserEmail(user:string) {
        let result = await props.uxpContext.executeAction('User','GetEmail',{'userId':user },{json:true});
        return result.email;
    }

    /* Get the email address the first time the page loads */
    React.useEffect(()=>{
        getUserEmail('admin').then(email => setEmail(email));
    });

    return <WidgetWrapper>
        <div>
            {email}
        </div>
    </WidgetWrapper>;
}

```

You can see that we call `executeAction` from the provided context and call an action called 'GetEmail' in a model called 'User', passing a single parameter - `userId`.

We also set `{json:true}` which means the result will be parsed inso a JSON object and returned to us.

When the widget loads, we use the [useEffect](https://reactjs.org/docs/hooks-reference.html#useeffect) react hook to execute our Lucy action.

We use the [useState](https://reactjs.org/docs/hooks-reference.html#usestate) react hook to set the email state - initially empty an then set to the value we get back from Lucy.


Lets complete our component by making it show a loading indicator while we wait for the Lucy action to execute and return the email address.

At the start, the email state variable is empty so we can use that condition to show a loading indicator using the [Loading](components/Loading) component.

```tsx
const UserEmailWidget:React.FunctionComponent<IWidgetProps> = (props) => {
    let [email,setEmail] = React.useState('');
    async function getUserEmail(user:string) {
        let result = await props.uxpContext.executeAction('User','GetEmail',{'userId':user },{json:true});
        return result.email;
    }

    /* Get the email address the first time the page loads */
    React.useEffect(()=>{
        getUserEmail('admin').then(email => setEmail(email));
    });

    return <WidgetWrapper>
        <div>
            {email || <Loading />}
        </div>
    </WidgetWrapper>;
}

```