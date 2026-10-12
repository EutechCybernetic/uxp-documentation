# Lucy: Model Designer Fixes

Bug fixes in the Lucy model designer. Each entry says what was wrong and what changed, so tests can be planned from it.

The model designer has two modes, chosen under **Settings > Mode**. In **Simple** mode each block has one trigger pin, and values are passed with pills. In **Default** mode values are passed on wires between pins, as in v4. Unless an entry says otherwise, Default mode works exactly as before.

## A Javascript block wired to the next block failed with "Invalid port"

| | |
|---|---|
| **Where:** | Lucy > Models > open a model in **Simple** mode > an action with an **ES6 Javascript** block wired to another block, for example **Output**. |
| **Issue:** | Running the action failed with `Unable to parse the workflow: Invalid port output:output`. Adding an output to the Javascript block made its default output pin disappear, and the new pin could not be wired until the model was saved and reloaded. |
| **Ticket:** | [LPVR-1167](https://eutech.atlassian.net/browse/LPVR-1167) |
| **Fix:** | In Simple mode these blocks have one fixed output pin, **All Outputs**, in the block footer. The next block is wired from it. It fires when the block finishes without an error. Outputs added to the block are read with pills and do not need a wire. |
| **Also changed:** | The same pin is on Javascript, JS Block, Connector, External Connector, Call Web Service, Queue and Hold Until blocks. A block that fails fires its **Error** pin and not **All Outputs**. |
| **Worth checking:** | Wire Action > Javascript > Output and run: no error. Add an output to the Javascript block, return a value for it, and use it in the Output block's value with a pill: the value is returned. Wire a block from **All Outputs** straight after adding the Javascript block, without saving. Make the Javascript block throw: the next block does not run and the Error pin fires. Check the debugger shows the run. |
| **By design:** | Blocks with no output, such as Schedule Action, Add Headers, Set Status Code and Hold Continue, are end blocks. Nothing can be wired after them, as in Default mode and v4. |
| **Note:** | A Javascript block wired before this fix keeps its old wire and still fails. Delete the block, add it again and rewire it. |

## Two blocks wired into one block failed with "The given key ... was not present in the dictionary"

| | |
|---|---|
| **Where:** | Lucy > Models > a model in **Simple** mode > an action where two or more blocks are wired into the same block, for example two **Add** blocks into one **Output**. |
| **Issue:** | Running the action failed with `The given key 'LucyEngine.Ports.OutputPort' was not present in the dictionary.` The block ran as soon as the first wired block finished, before the block its pill reads from had run. |
| **Ticket:** | [LPVR-1167](https://eutech.atlassian.net/browse/LPVR-1167) |
| **Fix:** | In Simple mode a block now waits for every block wired into it. It runs once each of them has run or can no longer be reached. A block also waits for the blocks its pills read from. |
| **Worth checking:** | Two Add blocks into one Output, with the Output value reading the first block, then the second, then both: each returns the right value. An If block with one branch wired to the Output: the action finishes when the other branch is not taken. Two Javascript blocks into one Output, one of them answering after a delay: the Output waits for both. A chain of several such blocks. The debugger shows the wired blocks before the block they feed. |
| **By design:** | A block whose only pill reads from a block that never ran is skipped, and the run log says the block could not be reached. When a value has pills from several blocks and only some ran, the block runs with the values it has. |
| **Note:** | Open a Simple mode model saved before this fix and save it once. The new behaviour applies from that save. |

## A copied action showed the old action name, and its values still read the original

| | |
|---|---|
| **Where:** | Lucy > Models > open a model > the copy and rename buttons beside the action name above the canvas, and copy, paste and duplicate of blocks. Both modes. |
| **Issue:** | After copying an action under a new name, the start block still showed the old name. The same happened after renaming an action. In the copy, pills still pointed at the blocks of the original action, so the copy returned an empty or wrong result. Pasted and duplicated blocks kept the label of the block they came from, so one action could have two blocks called "Block 2". |
| **Ticket:** | [LPVR-1167](https://eutech.atlassian.net/browse/LPVR-1167) |
| **Fix:** | The start block shows the action name. Pills in copied blocks point at the copies. A block pasted or duplicated into an action gets the next free "Block N" label. |
| **Worth checking:** | Copy an action and run both: same result. Rename an action: the start block follows. Duplicate one block, and copy and paste several blocks whose values read from each other: the new blocks read from the new blocks and have new labels. Paste a block whose pill reads a block that was not copied: the pill is unchanged. Open an action built in v4: its start block shows the action name. |
| **By design:** | A copy of a whole action keeps the block labels of the original. A label typed by hand is replaced by "Block N" on paste and duplicate. Event start blocks keep showing the event title. |
| **Note:** | An action copied before this fix keeps its wrong pills. Copy it again, or pick the values again. |

## Switching mode, and pasting blocks copied in the other mode

| | |
|---|---|
| **Where:** | Lucy > Models > open a model > **Settings > Mode**, and paste on the canvas. |
| **Issue:** | Found while fixing the above. Blocks kept Simple mode's **All Outputs** pin after a switch to Default. Blocks pasted from the other mode were not converted. |
| **Ticket:** | [LPVR-1167](https://eutech.atlassian.net/browse/LPVR-1167) |
| **Fix:** | Switching to Default removes the **All Outputs** pin and moves each wire from it to the block's own output. Switching to Simple adds the pin. Pasted blocks are converted to the mode of the model they are pasted into. Only the pasted blocks change. |
| **Also changed:** | Undo history restarts at a mode switch. On a read-only model the mode cannot be changed; running and debugging still work. |
| **Worth checking:** | Build a small flow in Default mode, switch to Simple, run, save, switch back, run: the result is the same each time. Copy blocks in a Simple mode model and paste them into a Default mode model, and the other way round. Open a read-only model: the mode selector is disabled and the action still runs. Export a model in each mode and import it: it opens in the mode it was exported in. |
| **Note:** | An export or a saved version of a Simple mode model made before this fix has no mode recorded. Imported as a new model it opens in Default mode; switch it to Simple under Settings. |

## The Versions menu said "No saved versions"

| | |
|---|---|
| **Where:** | Lucy > Models > open a model > **Versions**, in the designer header. Both modes. |
| **Issue:** | The menu said "No saved versions" for a model that had saved versions. The count of users editing the model, beside it, never loaded. |
| **Ticket:** | [LPVR-1198](https://eutech.atlassian.net/browse/LPVR-1198) |
| **Fix:** | The menu lists the saved versions. The users count loads and refreshes every 30 seconds. |
| **Also changed:** | The list updates straight after **Save**, with no page reload. The designer shows its loading skeleton first and then the layout once; it no longer flashes the layout before loading. |
| **Worth checking:** | Open a model saved several times: the versions are listed, newest first, with one marked **Active**. Change something and save: a new version appears in the list. Restore an older version: the designer reloads with it and it becomes the active one. Delete a version: it leaves the list. Open the same model in a second browser: the users count rises within 30 seconds. A new, unsaved model says "No saved versions". |

## Updating a model without a name failed, and restoring a version could clear the model name

| | |
|---|---|
| **Where:** | The service `System.MetadataMap:Update`, called with a model key and no `Name`. For example an integration that changes one field of a model, or an import that sends only the definition. Also Lucy > Models > open a model > **Versions** > restore. |
| **Issue:** | The change was saved, then the call returned `The given key 'Name' was not present in the dictionary.` The engine kept running the old definition. The version saved by that call had no name. Restoring such a version set the model's name to empty: the header showed "Untitled" and the model's actions failed. |
| **Ticket:** | [LPVR-1198](https://eutech.atlassian.net/browse/LPVR-1198) |
| **Fix:** | An update without a name succeeds, the engine loads the new definition, and the saved version carries the model's name. Restoring a version that has no name keeps the model's current name, and the confirm dialog says so. |
| **Worth checking:** | Call the service with a key and a new definition, no name: it returns without an error, and running a saved action gives the new result. Call it with a key and one other field: the field is saved and the name is unchanged. Rename a model through the service: still works. Restore a version from before a rename: the model gets its older name back, as before. |
| **By design:** | Versions saved without a name before this fix stay as they are. They restore under the model's current name. |

## Known issue: a pill on a wired pin is not resolved in Default mode

| | |
|---|---|
| **Where:** | Lucy > Models > a model in **Default** mode > a block whose input pin has a wire and also a value containing a pill, for example an action parameter wired to the Output block's **Value** pin with `#{input.ABC}` typed in the value. |
| **Issue:** | The block receives the text `#{input.ABC}` and not the value. v4 behaves the same. |
| **Ticket:** | [LPVR-1167](https://eutech.atlassian.net/browse/LPVR-1167) |
| **Fix:** | Not fixed. Changing it would change the result of existing Default mode workflows. |
| **Note:** | Workaround: remove the wire and keep the pill, or clear the value and keep the wire. Plain text on a wired pin works. A pill on a pin with no wire works. Simple mode is not affected. |
