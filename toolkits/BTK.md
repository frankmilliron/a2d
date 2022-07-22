# Button ToolKit

This is an API library that uses the [MouseGraphics ToolKit](../mgtk/MGTK.md) to implement a button control.

DeskTop originally had multiple copies of the code implementing similar functionality, tightly coupled to the application. The logic has been rewritten and enhanced, and moved into a library with an MLI-style interface, allowing the same code to service multiple instances without duplication.

Client code must define `BTKEntry` (referencing the instance's `btk::BTKEntry`) and can then use the `BTK_CALL` macro, with the typical call number / parameter address supplied. The code must be instantiated in the same memory bank as MGTK so it can make calls and reference resources directly.

> Desk Accessories running from Aux can define `BTKEntry := BTKAuxEntry` defined in desktop/desktop.inc.

## Concepts

### ButtonRecord
This defines the state of a control instance.
```
.byte       window_id       ID of the Winfo containing the control.
.addr       a_label         Address of the button label.
MGTK:Rect   rect            Bounding rect of the control.
.byte       state           Button state. High bit is disabled.
```

## Commands

### Draw ($00)
Draw the button, including frame and label, considering the disable state.

Parameters:
```
.addr       a_record        Address of the ButtonRecord
```

### Flash ($01)
Flash the button label. Used after a keypress.

Parameters:
```
.addr       a_record        Address of the ButtonRecord
```

### Hilite ($02)
Redraw the control label, considering the disable state.

Parameters:
```
.addr       a_record        Address of the ButtonRecord
```

### Track ($03)
Start a nested event loop tracking after a click is initiated in the control. Returns with N=0/Z=1 if clicked, N=1/Z=0 if cancelled.

Parameters:
```
.addr       a_record        Address of the ButtonRecord
```

## Convenience Macros

* `BTK_CALL` can be used to make calls in the form `BTK_CALL command, params`, if `BTKEntry` is defined.
* `DEFINE_BUTTON` can be used to instantiate a record. Parameters are:
  * symbol (name) for the record
  * window ID
  * label string
  * left, top, width (optional), and height (optional)
* `DEFINE_BUTTON_PARAMS` can be used to instantiate a union-style parameter block. Callers can then pass this to BTK calls.
  * symbol (name) for the parameter block
  * symbol (name) of the associated `ButtonRecord`

Example:
```
        DEFINE_BUTTON button_rec, kWindowId, "Press Me", kLeft, kTop ; default width/height
        DEFINE_BUTTON_PARAMS button_params, button_rec
        ...
        BTK_CALL BTK::Draw, button_params
```