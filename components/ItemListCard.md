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

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|title|string|Yes|-|-|
|renderSubTitle|() => JSX.Element|No|-|-|
|item|any|Yes|-|-|
|fields|string[]|Yes|-|-|
|renderField|(object: any, field: string, key: number) => JSX.Element|No|-|-|
|backgroundColor|string|No|-|-|
|className|string|No|-|-|

## Related Types

- [IItemListCardProps](../types/IItemListCardProps.md)

