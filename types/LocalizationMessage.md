# LocalizationMessage

Message interface for localization save


## Definition

```tsx
export interface LocalizationMessage {
    key: string;
    languageCode: string;
    languageName: string;
    message: string;
    hasModified?: boolean;
}
```

## Usage

```tsx
import { LocalizationMessage } from 'uxp/components';
```

