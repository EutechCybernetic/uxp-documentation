# Dropdown

<iframe
  src="https://uxp-components.vercel.app/iframe.html?id=popups-dropdown--default&viewMode=story"
  width="100%"
  height="420"
  style="border:1px solid #e2e8f0;border-radius:8px;margin-bottom:1.5rem;"
  title="Dropdown live demo"
></iframe>



A component that displays a dropdown menu with customizable positioning and animation.

## USAGE PATTERNS

### 1. LEGACY MODE (Wrapped Trigger) - Backward Compatible
The dropdown wraps and manages the trigger element. Use for simple cases and backwards compatibility.
The dropdown handles all click logic automatically.

```tsx
<Dropdown
  trigger={<button>Click me</button>}
  content={<div>Dropdown content</div>}
/>
```

**With triggerElementRef for precise click detection:**
```tsx
const buttonRef = useRef<HTMLButtonElement>(null);

<Dropdown
  trigger={
    <div>
      <button ref={buttonRef}>Toggle</button>
      <span>Other content</span>
    </div>
  }
  triggerElementRef={buttonRef}
  content={<div>Only button clicks will toggle</div>}
/>
```

### 2. EXTERNAL TRIGGER MODE (v5 Pattern) - Recommended for Inputs
The trigger is a sibling of the dropdown, giving full styling control.
Use for input components requiring base class styling.
Parent handles trigger clicks, dropdown handles outside clicks automatically.

```tsx
const triggerRef = useRef<HTMLDivElement>(null);
const [isOpen, setIsOpen] = useState(false);

<div className="uxpcore_input uxp-form-select">
  <div
    ref={triggerRef}
    className="uxpcore_input__trigger"
    onClick={() => setIsOpen(!isOpen)}
    tabIndex={0}
  >
    Select an option
  </div>

  <Dropdown
    externalTriggerRef={triggerRef}
    content={<div>Dropdown options</div>}
    isOpen={isOpen}
    onToggle={() => setIsOpen(!isOpen)}
    matchTriggerWidth={true}
  />
</div>
```

## CLICK HANDLING BEHAVIOR

### Legacy Mode
- Dropdown wraps trigger and handles all clicks
- Clicking trigger → Dropdown's internal handler toggles state
- Clicking outside (backdrop) → Dropdown closes via backdrop handler
- Can be controlled (isOpen + onToggle) or uncontrolled

### External Trigger Mode
- Trigger and dropdown are siblings (not parent-child)
- Clicking trigger → Parent's onClick handler toggles state
- Clicking outside (backdrop) → Dropdown's onToggle callback → Parent closes
- MUST be controlled (isOpen + onToggle required)
- **Click isolation guaranteed**: Trigger is in normal DOM, backdrop is in Portal

## CLICK ISOLATION TECHNICAL DETAILS

No double-firing occurs because:
1. External trigger element is in normal DOM tree (parent component)
2. Dropdown portal renders to document.body (via PortalContainer)
3. Backdrop is rendered inside the portal
4. Clicking trigger CANNOT trigger backdrop onClick (different DOM trees)
5. Clicking backdrop calls onClickBackdrop → closes dropdown



## Installation

```tsx
import { Dropdown } from 'uxp/components';
```

## Signature

```tsx
const Dropdown: React.ForwardRefExoticComponent<React.RefAttributes<DropdownHandlers> & DropdownProps>
```

## Examples

#### Full featured legacy mode

```tsx
tsx
<Dropdown
  trigger={<button>Menu</button>}
  content={
    <div>
      <div>Option 1</div>
      <div>Option 2</div>
    </div>
  }
  position="top-right"
  duration={300}
  isOpen={true}
  onToggle={() => console.log('Dropdown toggled')}
  showAnchor={true}
  className="custom-dropdown"
/>
```

## Properties

|Name|Type|Mandatory|Default Value|Example Value|
|-|-|-|-|-|
|content|ReactNode|Yes|-|-|
|trigger|ReactNode|No|-|-|
|triggerElementRef|React.MutableRefObject<HTMLDivElement>|No|-|-|
|externalTriggerRef|React.RefObject<HTMLElement>|No|-|-|
|className|string|No|-|-|
|contentClassName|string|No|-|-|
|position|[DropdownPosition](../types/DropdownPosition.md)|No|-|-|
|duration|number|No|-|-|
|isOpen|boolean|No|-|-|
|preventOpening|boolean|No|-|-|
|onToggle|() => void|No|-|-|
|showAnchor|boolean|No|-|-|
|matchTriggerWidth|boolean|No|-|-|
|minWidth|number \| string|No|-|-|
|maxWidth|number \| string|No|-|-|

## Ref Handlers

Available methods through ref:

|Method|Type|Description|
|-|-|-|
|open|() => void|Opens the dropdown. |
|close|() => void|Closes the dropdown. |

## Related Types

- [DropdownProps](../types/DropdownProps.md)
- [DropdownPosition](../types/DropdownPosition.md)
- [DropdownHandlers](../types/DropdownHandlers.md)

