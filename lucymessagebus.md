# Real-Time Communication with Lucy

Apart from communicating with Lucy by calling actions in your models you can also receive information in real time by having Lucy push data down to your user interface on demand.

This allows you to build backend integrations that can communicate with UIs on a on-demand real-time basis.

## The Message Bus
Real-Time communication happens via the message bus. The message bus is  a websocket based communication system that allows your interface to open a bidirectional websocket to Lucy on the cloud and receive messages on it. 

You can subscribe to a 'channel' and receive messages that have been published to that channel.
You can choose to subscribe to multiple channels.

A single connection is shared by all interfaces running on the page and the connection is opened when the channel subscription is requested.

## Subscribing to a channel
You can use the [useMessageBus](hooks/usemessagebus.md) hook in your React component to subscribe to a channel and specify a function call to when a message is received on that channel.

The function will supply 2 arguments - the payload (a string) and the channel that it arrived at (the same channel that you subscribed to).

The hook will also take care of unsubscribing when your component unmounts.

## Usage
```
useMessageBus('visitor-arrival',(payload,channel)=>{
    //read the payload and react to it
});
```

## Lucy Usage
In Lucy you can publish a message to a channel by using the PublishMessage block. You need to specify a channel name and payload.

## Use Cases
These are some of the common usage scenarios for using the message bus.

### Reduce polling frequency
Some times you need to regularly poll a service for changes and present them on a dashboard.
Instead of polling at small intervals (and thus increase the load on the client and server) you should poll at longer intervals and use the message bus to push down a message (from Lucy) to the client to hint that data is available. Your interface can use that information to schedule an immediate retrieval of data.

With this mechanism whenever a change happens, Lucy can push a message down to all interested clients. By keeping a regular longer polling schedule you can still receive changes even if you did not receive it on the message bus (For example, if the browser reloaded during an event or there was a temporary network connectivity issue)

## Receive feedback from a long running process
Some Lucy sequences may be long running - either the sequence itself is long or it may offload work onto a queue or some external application for processing asynchronously. In either case, the UI will not be able to respond until it gets back a response.

If the sequence is a long running sequence you will eventually get a reply that you can present to users but will have to show some kind of Loading indicator in the meanwhile.

If the sequence has to offload a task to some background queue or external system, it may finish quickly but you will not be able to receive meaningful feedback until the process is finished in the backend.

In either case, you can use the message bus to frequently give updates to the user or when a background process is finished.

In order to prevent feedback from one client being shown in the same UI in another client, you should use random channel names.

A common technique is to generate a random channel name, subscribe to that channel and then pass that channel name in the payload to the action being called.
The action in Lucy can then use that channel name to send down updates at regular intervals.
If the action is a background job - the channel name could be saved into the queue or a data collection and then later retrieved and used to push messages down to the client.

## Formulating on channel names
Since any client can subscribe to any channel by name it's important to choose good channel names to avoid conflict or security issues.

Some considerations:

### Common global channel names
If you need to broadcast messages to many clients then consider using a global fixed channel name.
The name can be prefixed by your integration name.
For example, `visitor-management/arrival`, might be the channel on which you broadcast a message whenever a visitor arrives at the building. `visitor-management/departure` might be the name you use when you want to broadcast that a visitor has left.

You should ideally be more specific: `envoy-visitor-management/arrival` would be the message when the visitor management integration you are building uses Envoy in the backend to power the visitor system.

### One-off channel names
Some times you need to make a request and then receive back data on a channel once a process is finished.
For this - it is recommended that you generate a random channel name - preferably using a GUID or UUID algorithm.

### Private Channel Names
If you want to broadcast a message that should only be received by a specific user - for example - to alert a user that someone has arrived to meet him - you can incorporate the user's key into the channel name: `visitor-management/arrival/<userkey>`

On the client side when subscribing you can use the context object to get the current user's key and in the backend when Lucy publishes the message get the user's key through some available relationship.

### Sensitive Channel Names
Since anyone can subscribe to a channel, if you want to send sensitive information its best that you generate random channel names using GUIDs and register them in Lucy (maybe in a data collection or some integration with an external system).



## Performance Considerations
Messages pushed down a channel are designed to be delivered in real-time however it is recommended that you limit the payload to small packets.

More broadly, the message bus is not meant for streaming data or for deliverying large payloads.

If you need to send a lot of information, the best mechanism would be to just send a notification via message bus and have the client react to that by doing a separate Lucy api call to get the full payload.


