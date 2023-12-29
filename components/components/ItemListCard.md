# ItemListCard



Show a card with a list of fields in it. You need to provide an object as the `item` prop and then a list of fields from within the object to be rendered.
You can also provide an optional `renderField` function to customize how fields are rendered.




## Installation



```tsx
import {ItemListCard} from 'uxp/components';
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

|Name|Type|Description|
|-|-|-|
|title|string|The title to show on the card |
|renderSubTitle|() => JSX.Element|Any optional subtitle content to render. This should be a function that returns a react node |
|item|any|The object to render in the card |
|fields|string[]|The list of fields from within the object that should be shown. For each field in this list - one line gets rendered on the card |
|renderField|(object: any, field: string, key: number) => JSX.Element|An optional function to control rendering of each field. It takes the item as a parameter along with the name of the field being rendered. You can choose to render whatever you want here |
|backgroundColor|string|Any background tint to apply to the card. This must be in #RRGGBB hexadecimal format. |
|className|string|Any additional css classes to apply to the component |
### title



---



The title to show on the card


|type|
|-|
|string|
### renderSubTitle



---



Any optional subtitle content to render. This should be a function that returns a react node


|type|
|-|
|() => JSX.Element|
### item



---



The object to render in the card


|type|
|-|
|any|
### fields



---



The list of fields from within the object that should be shown.
For each field in this list - one line gets rendered on the card


|type|
|-|
|string[]|
### renderField



---



An optional function to control rendering of each field. It takes the item as a parameter along with the name of the field being rendered.
You can choose to render whatever you want here


|type|
|-|
|(object: any, field: string, key: number) => JSX.Element|
### backgroundColor



---



Any background tint to apply to the card. This must be in #RRGGBB hexadecimal format.


|type|
|-|
|string|
### className



---



Any additional css classes to apply to the component


|type|
|-|
|string|
