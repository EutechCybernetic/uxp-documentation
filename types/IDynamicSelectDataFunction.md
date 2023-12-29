# IDynamicSelectDataFunction





max: page size
last : last page token
args: any args to filter items
args has a default option 'query'. when you type in the search box, search text ill be set to this 'query'




```tsx
type IDynamicSelectDataFunction = (max: number, lastPageToken: string, args?: any) => Promise<{ items: Array<any>, pageToken: string }>
```

## Usage



```tsx
import {IDynamicSelectDataFunction} from 'uxp/components';
```

