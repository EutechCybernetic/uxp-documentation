# ItemListCard

Show a card with a list of fields in it. You need to provide an object as the `item` prop and then a list of fields from within the object to be rendered.
You can also provide an optional `renderField` function to customize how fields are rendered.




## Installation

```tsx
import { ItemListCard } from 'uxp/components';
```

## Signature

```tsx
const ItemListCard: React.FunctionComponent<IItemListCardProps>
```

## Examples

```tsx
<ItemListCard
     title="System"
     item={{
         "hvac": {
             "value": 250,
             "percentage": 15
         },
         "lighting": {
             "value": 250,
             "percentage": 15
         },
         "elevators": {
             "value": 250,
             "percentage": 15
         },
         "fire alarm": {
             "value": 250,
             "percentage": 15
         }
     }}
     renderSubTitle={() => {
         return (<div className="sample-subtitle">Savings (AED)</div>)
     }}
     fields={["hvac", "lighting", "elevators", "fire alarm"]}
     renderField={(item, field, key) => {
         return (<div className="sample-item-field" key={key}>
             <div className="label">{field.toUpperCase()}</div>
             <div className="value">
                 <div className="amount">{item[field].value}</div>
                 <div className="percentage">{item[field].percentage}%</div>
             </div>
         </div>)
     }}
     backgroundColor="rgb(209 148 250)"
 />
```

## Live preview

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-itemlistcard--default&amp;viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ItemListCard live preview"
></iframe>

### Variants

#### Example 1

<iframe
  src="https://story.uxp.iviva.com/iframe.html?id=data-display-cards-itemlistcard--default&amp;viewMode=story&amp;args=title%3ASystem&amp;props=%7B%22item%22%3A%7B%22hvac%22%3A%7B%22value%22%3A250%2C%22percentage%22%3A15%7D%2C%22lighting%22%3A%7B%22value%22%3A250%2C%22percentage%22%3A15%7D%2C%22elevators%22%3A%7B%22value%22%3A250%2C%22percentage%22%3A15%7D%2C%22fire+alarm%22%3A%7B%22value%22%3A250%2C%22percentage%22%3A15%7D%7D%2C%22fields%22%3A%5B%22hvac%22%2C%22lighting%22%2C%22elevators%22%2C%22fire+alarm%22%5D%2C%22backgroundColor%22%3A%22rgb%28209+148+250%29%22%7D"
  width="100%"
  height="160"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="ItemListCard: Example 1"
></iframe>

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|"Chiller 01"|
|renderSubTitle|() => JSX.Element|No|-|-|
|item|any|Yes|-|{ status: 'Running', location: 'Level 1 · Plant room', load: '72%' }|
|fields|string[]|Yes|-|['status', 'location', 'load']|
|renderField|(object: any, field: string, key: number) => JSX.Element|No|-|Field and value renderField={(object, field, key) => <div key={key}><b>{field}<…|
|backgroundColor|string|No|-|-|
|className|string|No|-|-|

## Related Types

- [IItemListCardProps](../types/IItemListCardProps.md)

