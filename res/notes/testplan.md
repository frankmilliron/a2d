# Release Qualification Test Cases

> Status: Work in Progress

# DeskTop

* Open a volume with double-click.
* Open a directory with double-click.
* Open a text file with double-click.

* Open a volume with File > Open.
* Open a directory with File > Open.
* Open a text file with File > Open.

* Create a new folder (File > New Folder) - verify that it is selected / scrolled into view.

* Move a file by dragging - same volume - target is window.
* Move a file by dragging - same volume - target is volume icon.
* Move a file by dragging - same volume - target is folder icon.

* Repeat the following cases with these modifiers: Open-Apple, Solid-Apple:
  * Copy a file by dragging - same volume - target is window, using modifier.
  * Copy a file by dragging - same volume - target is volume icon, using modifier.
  * Copy a file by dragging - same volume - target is folder icon, using modifier.

* Copy a file by dragging - different volume - target is window.
* Copy a file by dragging - different volume - target is volume icon.
* Copy a file by dragging - different volume - target is folder icon.

* Open a volume, open a folder, close the just volume window; re-open the volume, re-open the folder, ensure the previous window is activated.

* Launch DeskTop. Select a file icon. File > Rename.... Enter a unique name, hit OK. Verify that the icon updates with the new name.
* Launch DeskTop. Select a file icon. File > Rename.... Press OK without changing the name. Verify that the dialog is dismissed and the icon doesn't change.
* Launch DeskTop. Select a volume icon. File > Rename.... Enter a unique name, hit OK. Verify that the icon updates with the new name.
* Launch DeskTop. Select a volume icon. File > Rename.... Press OK without changing the name. Verify that the dialog is dismissed and the icon doesn't change.

* File > Get Info a file.
* File > Get Info a volume.

* Position a volume icon in the middle of the DeskTop. Incrementally move a window so that it obscures all 8 positions around it (top, top right, right, etc). Ensure the icon repaints fully, and no part of the window is over-drawn.

* Launch DeskTop, File > Quit, run BASIC.SYSTEM. Ensure /RAM exists.

* File > Quit - verify that there is no crash under ProDOS 8.

* Run on Laser 128; verify that 800k image files on Floppy Emu show as 3.5" floppy icons.
* Run on system with realtime clock; verify that time shows in top-right of menu.

* Open folder with new files. Use File > Get Info; verify dates after 1999 show correctly.
* Open folder with new files. Use View > By Date; verify dates after 1999 show correctly.

* Open a window for a volume; open a window for a folder; close volume window; close folder window. Repeat 10 times to verify that the volume table doesn't have leaks.

* Run DeskTop on a IIc+ from a 3.5" floppy on internal drive. Verify that the disk doesn't spin constantly.

* Run on a system with a single slot providing 3 or 4 drives (e.g. CFFA, BOOTI, Floppy Emu); verify that all show up.

* Verify that GS/OS filename cases show correctly (e.g. ProDOS 2.5 disk).

* Open two windows. Click the close box on the active window. Verify that only the active window closes.
* Repeat the following case with these modifiers: Open-Apple, Solid-Apple:
  * Open two windows. Hold modifier and click the close box on the active window. Verify that all windows close.
* Open two windows. Press Open-Apple+Solid-Apple+W. Verify that all windows close.

* Run DeskTop on a system with RAMWorks and using RAM.DRV.SYSTEM. Verify that subdirectories under DESK.ACC are copied to /RAM/DESKTOP/DESK.ACC.
* Run DeskTop on a system with Slinky Ramdisk. Verify that subdirectories under DESK.ACC are copied to /RAM5/DESKTOP/DESK.ACC (or appropriate volume path).

* Start DeskTop with a hard disk and a 5.25" floppy mounted. Remove the floppy, and double-click the floppy icon, and dismiss the "The volume cannot be found." dialog. Verify that the floppy icon disappears, and that no additional icons are added.

* On an RGB system (IIgs, etc), go to Control Panel, check RGB Color. Verify that the display shows in color. Preview an image, and verify that the image shows in color and the DeskTop remains in color after exiting.
* On an RGB system (IIgs, etc), go to Control Panel, uncheck RGB Color. Verify that the display shows in monochrome. Preview an image, and verify that the image shows in color and the DeskTop returns to monochrome after exiting.
* On an IIgs, go to Control Panel, check RGB Color. Verify that the display shows in color. Enter the IIgs control panel (Control+Shift+Open-Apple+Esc), and exit. Verify that DeskTop remains in color.
* On an IIgs, go to Control Panel, uncheck RGB Color. Verify that the display shows in monochrome. Enter the IIgs control panel (Control+Shift+Open-Apple+Esc), and exit. Verify that DeskTop resets to monochrome.

* Put image file in `DESK.ACC`, start DeskTop. Select it from the Apple menu. Verify image is shown.
* Put text file in `DESK.ACC`, start DeskTop. Select it from the Apple menu. Verify text is shown.
* Put font file in `DESK.ACC`, start DeskTop. Select it from the Apple menu. Verify font is shown.

* Put BASIC program in `DESK.ACC`, start DeskTop. Select it from the Apple menu. Verify it runs.
* Put System program in `DESK.ACC`, start DeskTop. Select it from the Apple menu. Verify it runs.

* Open a folder with no items. Verify window header says "0 Items"
* Open a folder with only one item. Verify window header says "1 Item"
* Open a folder with two or more items. Verify window header says "2 Items"

* Launch DeskTop. Special > Format a Disk.... Ensure left/right arrows move selection correctly.

* Launch DeskTop. Open a window for a removable disk. Quit DeskTop. Remove the disk. Restart DeskTop. Open a different volume's window. Close it. Open it again. Verify that items in the File menu needing a window (New Folder, Close, etc) are correctly enabled.

* Launch DeskTop. Open a window for a removable disk. Quit DeskTop. Remove the disk. Restart DeskTop. Verify that 8 windows can be opened, and no render glitches occur.

* Launch DeskTop. Open a window. Select a file icon. Drag a selection rectangle around another file icon in the same window. Verify that the initial selection is cleared and only the second icon is selected.
* Launch DeskTop. Select a volume icon. Drag a selection rectangle around another volume icon. Verify that the initial selection is cleared and only the second icon is selected.

* Repeat the following cases with these modifiers: Open-Apple, Shift (on a IIgs), Shift (on a Platinum IIe):
  * Launch DeskTop. Click on a volume icon. Hold modifier and click a different volume icon. Verify that selection is extended.
  * Launch DeskTop. Select two volume icons. Hold modifier and click on the desktop, not on an icon. Verify that selection is not cleared.
  * Launch DeskTop. Select one or more volume icons. Hold modifier and click a volume icon. Verify that it is deselected.
  * Launch DeskTop. Hold modifier and double-click on a non-selected volume icon. Verify that it highlights then unhighlights, and does not open.
  * Launch DeskTop. Select a volume icon. Hold modifier and double-click the selected volume icon. Verify that it unhighlights then highlights, and does not open.
  * Launch DeskTop. Select a volume icon. Hold modifier down and drag a selection rectangle around another volume icon. Verify that both are selected.
  * Launch DeskTop. Open a volume containing files. Click on a file icon. Hold modifier and click a different file icon. Verify that selection is extended.
  * Launch DeskTop. Open a volume containing files. Select two file icons. Hold modifier and click on the window, not on an icon. Verify that selection is not cleared.
  * Launch DeskTop. Open a window. Select an icon. Hold modifier and double-click an empty spot in the window (not on an icon). Verify that the selection is not cleared.
  * Launch DeskTop. Open a window. Select an icon. Hold modifier down and drag a selection rectangle around another icon. Verify that both are selected.
  * Launch DeskTop. Open a window. Select one or more file icons. Hold modifier and click a file icon. Verify that it is deselected.
  * Launch DeskTop. Open a window. Hold modifier and double-click on a non-selected file icon. Verify that it highlights then unhighlights, and does not open.
  * Launch DeskTop. Open a window. Select a file icon. Hold modifier and double-click the selected file icon. Verify that it unhighlights then highlights, and does not open.
  * Launch DeskTop. Open a volume window. Hold modifier, and drag-select icons in the window. Release the modifier. Verify that the volume icon is no longer selected. Click an empty area in the window to clear selection. Verify that the selection clears.
  * Launch DeskTop. Open a volume window with many icons. Click on a file icon to select it. Modifier-click the icon to deselect it. Drag-select on the desktop covering a large area. Verify that no file icons are erroneously painted.
  * Launch DeskTop. Open a volume window with many icons. Modifier-click on a file icon to select it. Drag-select on the desktop covering a large area. Verify that no file icons are erroneously painted.

* Launch DeskTop. Click on a volume icon. Hold Solid-Apple and click on a different volume icon. Verify that selection changes to the second icon.
* Launch DeskTop. Open a volume containing files. Click on a file icon. Hold Solid-Apple and click on a different file icon. Verify that selection changes to the second icon.
* Run on Laser 128. Launch DeskTop. Open a volume. Click on icons one by one. Verify selection changes from icon to icon, and isn't extended as if a Open-Apple key/button or Shift is down.

* Launch DeskTop. Select two volume icons. Double-click one of the volume icons. Verify that two windows open.
* Launch DeskTop. Open a window. Select two folder icons. Double-click one of the folder icons. Verify that two windows open.
* Launch DeskTop. Open a window. Hold Solid-Apple and double-click a folder icon. Verify that the folder opens, and that the original window closes.
* Launch DeskTop. Open a window. Select a folder icon. Hold Solid-Apple and select File > Open. Verify that the folder opens, and that the original window closes.
* Launch DeskTop. Open a window. Select a folder icon. Hold Open-Apple and select File > Open. Verify that the folder opens, and that the original window closes.
* Launch DeskTop. Open a window. Select a folder icon. Press Open-Apple+Solid-Apple+O. Verify that the folder opens, and that the original window closes.
* Launch DeskTop. Ensure nothing is selected. Press Open-Apple+Solid-Apple+O. Verify that nothing happens.

* Launch DeskTop. Open a window. Locate an executable BIN file icon. Double-click it. Verify that nothing happens.
* Launch DeskTop. Open a window. Locate an executable BIN file icon. Hold Solid-Apple and double-click it. Verify that nothing happens.
* Launch DeskTop. Open a window. Locate an executable BIN file icon. Select File > Open. Verify that it executes.
* Launch DeskTop. Open a window. Locate an executable BIN file icon. Press Open-Apple+O. Verify that it executes.
* Launch DeskTop. Open a window. Locate an executable BIN file icon. Press Solid-Apple+O. Verify that it executes.

* Launch DeskTop. Try to move a file (drag on same volume) where there is not enough space to make a temporary copy. Verify that the error message says that the file is too large to move.
* Launch DeskTop. Try to copy a file (drag to different volume) where there is not enough space to make the copy. Verify that the error message says that the file is too large to copy.

* Launch DeskTop. Open a volume window. Select icons in the window. Switch window's view to by Name. Verify that File > Get Info is disabled. Switch view back to as Icons. Verify that no icons are shown as selected, and that File > Get Info is still disabled.
* Launch DeskTop. Open a volume window. Select volume icons on the desktop. Switch window's view to by Name. Verify that the volume icons are still selected, and that File > Get Info is still enabled (and shows the volume info). Switch window's view back to as Icons. Verify that the desktop volume icons are still selected.

* Launch DeskTop. Open a volume window. Select an icon. Click in the header area (items/use/etc). Verify that selection is not cleared.

* Launch DeskTop. Open a window with only one icon. Drag icon so name is to left of window bounds. Ensure icon name renders.

* Launch DeskTop. Open a volume window with icons. Drag leftmost icon to the left to make horizontal scrollbar activate. Click horizontal scrollbar so viewport shifts left. Verify dragged icon still renders.
* Launch DeskTop. Open a volume window with icons. Drag leftmost icon to the left to make horizontal scrollbar activate. Click horizontal scrollbar so viewport shifts left. Drag window to the right so it overlaps desktop icons. Verify DeskTop doesn't lock up.

* Launch DeskTop. Open a volume window with icons. Drag window so only header is visible. Verify that DeskTop doesn't render garbage or lock up.

* Launch DeskTop. Open two volume windows with icons. Drag top window down so only header is visible. Click on other window to activate it. Verify that the window header does not disappear.

* Launch DeskTop. Open a window with a single icon. Move the icon so it overlaps the left edge of the window. Verify scrollbar appears. Hold scroll arrow. Verify icon scrolls into view, and eventually the scrollbar deactivates. Repeat with right edge.
* Launch DeskTop. Open a window with 11-15 icons. Verify scrollbars are not active.

* Launch DeskTop. Open a folder using Apple menu (e.g. Control Panels) or a shortcut. Verify that the used/free numbers are non-zero.
* Launch DeskTop. Open a subdirectory folder. Quit and relaunch DeskTop. Verify that the used/free numbers in the restored window are non-zero.

* Launch DeskTop. Open a folder containing subfolders. Select all the icons in the folder. Double-click one of the subfolders. Verify that the selection is retained in the parent window. Position the child window over top of the parent so it overlaps some of the icons. Close the child window. Verify that the parent window correctly shows only the previously opened folder as highlighted.

* Launch DeskTop. Special > Format a Disk. Verify that the device order shown matches the order of volumes shown on the DeskTop (boot device first, etc). Format a disk. Verify the correct device was formatted.
* Launch DeskTop. Special > Erase a Disk. Verify that the device order shown matches the order of volumes shown on the DeskTop (boot device first, etc). Erase a disk. Verify the correct device was erased.

* Launch DeskTop. Open a window containing folders and files. Scroll window so a folder is partially or fully outside the visual area (e.g. behind title bar, header, or scrollbars). Drag a file over the obscured part of the folder. Verify the folder doesn't highlight.
* Launch DeskTop. Open a window containing folders and files. Scroll window so a folder is partially or fully outside the visual area (e.g. behind title bar, header, or scrollbars). Drag a file over the visible part of the folder. Verify the folder highlights but doesn't render past window bounds.

* Launch DeskTop. Select a 32MB volume. File > Get Info. Verify total size shows as 32,768K not 0K.

* Launch DeskTop. Open a window containing folders and files. Open another window, for an empty volume. Drag an icon from the first to the second. Ensure no scrollbars activate in the target window.
* Launch DeskTop. Open a window containing folders and files, with no scrollbars active. Open another window. Drag an icon from the first to the second. Ensure no scrollbars activate in the source window.

* Set up multiple volumes (e.g. V1, V2, V3). Launch DeskTop. Use Shortcuts > Add a Shortcut... to add an shortcut on V2. Run Shortcuts > Edit a Shortcut... and select the added shortcut to edit it, which should init the dialog showing V2. Click Change Drive. Verify that the picker now shows V3.

* Launch DeskTop. Open some windows. Special > Disk Copy. Quit back to DeskTop. Verify that the windows are restored.
* Launch DeskTop. Close all windows. Special > Disk Copy. Quit back to DeskTop. Verify that no windows are restored.


* Launch DeskTop. Select a file. File > Rename.... Enter a name, but place the IP in the middle of the name (e.g. "exam|ple"). Click OK. Verify that the full name is used.
* Launch DeskTop. Open a window. File > New Folder.... Enter a name, but place the IP in the middle of the name (e.g. "exam|ple"). Click OK. Verify that the full name is used.
* Launch DeskTop. Special > Format a Disk.... Select a disk (other than the startup disk) and click OK. Enter a name, but place the IP in the middle of the name (e.g. "exam|ple"). Click OK. Verify that the full name is used.
* Launch DeskTop. Special > Erase a Disk.... Select a disk (other than the startup disk) and click OK. Enter a name, but place the IP in the middle of the name (e.g. "exam|ple"). Click OK. Verify that the full name is used.

* Configure a system with removable disks. (e.g. Virtual II OmniDisks) Launch DeskTop. Verify that volume icons are positioned without gaps (down from the top-right, then across the bottom right to left). Eject one of the middle volumes. Verify icon disappears. Insert a new volume. Verify icon takes up the vacated spot. Repeat test, ejecting multiple volumes verify that positions are filled in order (down from the top-right, etc).

* Configure a system with at least 9 volumes. Launch DeskTop. Special > Format a Disk. Select a volume in the third column. Click OK. Verify that the selection rect is fully erased.

* Launch DeskTop. Open a window. File > New Folder..., enter name, OK. Copy the file to another folder or volume. Verify that the "Files remaining" count bottoms out at 0.
* Launch DeskTop. Open a window. File > New Folder..., enter name, OK. Move the file to another folder or volume. Verify that the "Files remaining" count bottoms out at 0.

* Launch DeskTop. Open a volume. File > New Folder..., create A. File > New Folder..., create B. Drag B onto A. File > New folder.... Verify DeskTop doesn't hang.

* Launch DeskTop. Open a window with files with dates with long month names (e.g. "February 29, 2020"). View > by Name. Resize the window so the lines are cut off on the right. Move the horizontal scrollbar all the way to the right. Verify that the right edges of all lines are visible.

* Launch DeskTop. Double-click on a file that DeskTop can't open (and where no BASIS.SYSTEM is present). Click OK in the "This file cannot be opened." alert. Double-click on the file again. Verify that the alert renders with an opaque background.

* Launch DeskTop. Create a sequence of nested folders approaching maximum path length, e.g. /RAM/ABCDEF123456789/ABCDEF123456789/ABCDEF123456789/ABCDEF12345. Try to copy a file into the folder. Verify that stray pixels do not appear in the top line of the screen.

* Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Delete the DESKTOP.CONFIG file from the startup disk, if it was present. Go into Control Panels and change a setting. Verify that DESKTOP.CONFIG is written to the startup disk.
* Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Delete the SELECTOR.LIST file from the startup disk, if it was present. Shortcuts > Add a Shortcut, and create a new shortcut. When prompted to save to the system disk, select OK. Verify that SELECTOR.LIST is written to the startup disk.

* Load DeskTop. Create a folder e.g. /RAM/F. Try to copy the folder into itself using File > Copy a File. Verify that an error is shown.
* Load DeskTop. Create a folder e.g. /RAM/F. Open the containing window, and the folder itself. Try to move it into itself by dragging. Verify that an error is shown.
* Load DeskTop. Create a folder e.g. /RAM/F, and a sibling folder e.g. /RAM/B. Open the containing window, and the first folder itself. Select both folders, and try to move both into the first folder's window by dragging. Verify that an error is shown before any moves occur.
* Load DeskTop. Create a folder e.g. /RAM/F. Open the containing window, and the folder itself. Try to copy it into itself by dragging with an Apple key depressed. Verify that an error is shown.
* Load DeskTop. Open a volume window. Drag a file from the volume window to the volume icon. Verify that an error is shown.
* Load DeskTop. Create a folder, and a file within the folder with the same name as the folder (e.g. /RAM/F and /RAM/F/F). Try to copy the file over the folder using File > Copy a File.... Verify that an error is shown.
* Load DeskTop. Create a folder, and a file within the folder with the same name as the folder (e.g. /RAM/F and /RAM/F/F). Try to move the file over the folder using drag and drop. Verify that an error is shown.
* Load DeskTop. Create a folder, and a file within the folder with the same name as the folder, and another file (e.g. /RAM/F and /RAM/F/F and /RAM/F/B). Select both files and try to move them into the parent folder using drag and drop. Verify that an error is shown before any files are moved.

* Load DeskTop. Open a volume. Adjust the window size so that horizontal and vertical scrolling is required. Scroll to the bottom-right. Quit DeskTop, reload. Verify that the window size was restored correctly.

* Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Shortcuts > Add a Shortcut.... Create a shortcut, click OK. Verify that when the "Do you want to save the new list on the system disk?" warning appears that the desktop volume icons repaint.

* Ensure the startup volume has a name that would be case-adjusted by DeskTop, e.g. /HD. Launch DeskTop. Open the startup volume. Apple > Control Panels. Drag a DA file to the startup volume window. Verify that the file is moved, not copied.

* Load DeskTop. Ensure that every ProDOS device is online and represented by an icon. Try opening volumes/folders until there are less than 8 windows but more than 127 icons. Verify that the "A window must be closed..." dialog has no Cancel button.
* Load DeskTop. Ensure that every ProDOS device is online and represented by an icon. Verify that 127 icons can be shown.
* Load DeskTop. Ensure that every ProDOS device is online and represented by an icon. Open windows bringing the total icons to 127. File > New Folder. Verify that a warning is shown and the window is closed. Repeat, with multiple windows open. Verify that everything repaints correctly, and that no volume or folder icon incorrectly displays as opened.
* Load DeskTop. Ensure that every ProDOS device is online and represented by an icon. Open windows bringing the total icons to 127. Use File > Copy a File to copy a file into a directory represented by an open window. Verify that after the copy, a warning is shown, the window is closed, and that no volume or folder icon incorrectly displays as opened.
* Load DeskTop. Ensure that every ProDOS device is online and represented by an icon. Open windows bringing the total icons to 127. Drag a file from another volume (to copy it) into an open window. Verify that after a copy, a warning is shown and the window is closed, and that no volume or folder icon incorrectly displays as opened.
* Load DeskTop. Ensure that every ProDOS device is online and represented by an icon. Open windows bringing the total icons to 127. Drag a volume icon into an open window. Verify that after the copy, a warning is shown and the window is closed, and that no volume or folder icon incorrectly displays as opened.

* Load Selector. Put a disk in Slot 6, Drive 1. Startup > Slot 6. Verify that the system boots the disk. Repeat for all other slots with drives.

* Launch DeskTop. Copy multiple selected files to another volume. Repeat the copy. When prompted to overwrite, alternate clicking Yes and No. Verify that the "Files remaining" count decreases to zero.
* Launch DeskTop. Copy a folder containing multiple files to another volume. Repeat the copy. When prompted to overwrite, alternate clicking Yes and No. Verify that the "Files remaining" count decreases to zero.
* Configure a IIgs system with ejectable disks. Launch DeskTop. Select the ejectable volume. Special > Eject Disk. Verify that an alert is not shown.

* Use an emulator that supports dynamically inserting SmartPort disks, e.g. Virtual ][. Insert disks A, B, C, D in drives starting at the highest slot first, e.g. S7D1, S7D2, S5D1, S5D2. Launch DeskTop. Verify that the disks appear in order A, B, C, D. Eject the disks, and wait for DeskTop to remove the icons. Pause the emulator, and reinsert the disks in the same drives. Un-pause the emulator. Verify that the disks appear on the DeskTop in the same order. Eject the disks again, pause, and insert the disks into the drives in reverse order (A in S5D2, etc). Un-pause the emulator. Verify that the disks appear in reverse order on the DeskTop.

* Configure a system with two volumes of the same name. Launch DeskTop. Verify that an error is shown, and only one volume appears.
* Launch DeskTop. Rename a volume to have the same name as another. Verify that an error is shown and the icon is removed.

* Launch DeskTop. Open a window. File > Quit. Launch DeskTop again. Ensure the window is restored. Try to drag-select volume icons. Verify that they are selected.

* Launch DeskTop. Select a volume icon, where the volume contains no files. Special > Get Size. Verify that numbers are shown (0) for number of files and size used.
* Use real hardware, not an emulator. Launch DeskTop. Select a volume icon. Special > Get Size. Verify that a "The specified path name is invalid." alert is not shown.

* Launch DeskTop. Select a volume with more than 255 files in a folder (e.g. Total Replay). Special > Get Size. Verify that the count finishes.
* Configure a system with a RAMCard of at least 1MB. On a physical volume, create a directory with a system file (e.g. BASIC.SYSTEM) and a subdirectory. In the subdirectory, create 256 normal files followed by a subdirectory (with some files) followed by more files. Then run the following tests:
  * Launch DeskTop. Create a shortcut for the system file, set to copy to RAMCard at boot. Ensure DeskTop is set to copy to RAMCard on startup. Restart DeskTop. Verify that the directory is successfully copied.
  * Launch DeskTop. Create a shortcut for the system file, set to copy to RAMCard at first use. Ensure DeskTop is set to copy to RAMCard on startup. Ensure DeskTop is set to launch Selector. Quit DeskTop. Launch Selector. Select the shortcut. Verify that the directory is successfully copied.

* Launch DeskTop. Select a volume. File > Open. Verify that the volume icon is still selected.
* Launch DeskTop. Double-click a volume. Verify that the volume icon is still selected.
* Launch DeskTop. Select a folder. File > Open. Verify that the folder icon is no longer selected.
* Launch DeskTop. Double-click a folder. Verify that the folder icon is no longer selected.
* Launch DeskTop. Open a window containing a folder. Position the window so that the folder icon will not be obscured when opened. Select the folder. File > Open. Verify that the folder icon is no longer selected.
* Launch DeskTop. Open a window containing a folder. Position the window so that the folder icon will not be obscured when opened. Double-click the folder. Verify that the folder icon is no longer selected.

* Configure a system with 14 devices. Launch and then exit DeskTop. Load another ProDOS app that enumerates devices. Verify that all expected devices are present, and that there's no "Slot 0, Drive 1" entry.

* Launch DeskTop. Open a volume window. Open a folder. Close the volume window. Press Open-Apple+Up. Verify that the volume window re-opens, and the that the folder icon is selected. Press Open-Apple+Up again. Verify that the volume icon is selected.
* Launch DeskTop. Open a volume window. Open a folder. Press Open-Apple+Up. Verify that the volume window is activated, and the that the folder icon is selected. Press Open-Apple+Up again. Verify that the volume icon is selected.
* Launch DeskTop. Open a volume window. Open a folder. Activate the volume window. Switch the window's view to by Name. Activate the folder window. Press Open-Apple+Up. Verify that the volume window is activated. Press Open-Apple+Up again. Verify that the volume icon is selected.

* Launch DeskTop. Position a volume icon near the center of the screen. Drag another volume onto it. Verify that after the copy dialog closes, the volume icon is still visible.
* Launch DeskTop. Position a volume icon near the center of the screen. Open the volume icon, and move/size the window to ensure the volume icon is visible. Drag another volume onto the window. Verify that after the copy dialog closes, the volume icon is still visible.
* Launch DeskTop. Position a volume icon near the center of the screen. Open the volume icon, and move/size the window to ensure the volume icon is visible. Drag another volume onto the window. Drag the same volume icon onto the window. Cancel the copy. Verify that after the copy dialog closes, the volume icon is still visible.

* Launch DeskTop. Position a volume icon near the center of the screen. Open a second volume icon, and move/size the window to ensure the first volume icon is visible. Drag a file icon onto the first volume icon. Verify that after the copy dialog closes, the volume icon is still visible.
* Launch DeskTop. Position a volume icon near the center of the screen. Open the volume icon, and move/size the window to ensure the volume icon is visible. Open a second volume icon, and move/size the window to ensure the first volume icon is visible. Drag a file icon from the second window into the first window. Verify that after the copy dialog closes, the volume icon is still visible.
* Launch DeskTop. Position a volume icon near the center of the screen. Open the volume icon, and move/size the window to ensure the volume icon is visible. Open a second volume icon, and move/size the window to ensure the first volume icon is visible. Drag a file icon from the second window into the first window. Repeat the drag, and cancel the copy dialog. Verify that after the copy dialog closes, the volume icon is still visible.
* Launch DeskTop. Position a volume icon near the center of the screen. Open the volume icon, and move/size the window to ensure the volume icon is visible. Drag a file icon to the trash. Verify that after the delete dialog closes, the volume icon is still visible.

* Launch DeskTop. Clear the selection (e.g. by clicking on the DeskTop). Verify that:
  * Special > Eject Disk is disabled.
  * Special > Check Drive is disabled.
  * File > Duplicate... is disabled.
  * File > Open, File > Get Info, File > Rename..., Special > Lock..., Special > Unlock..., and Special > Get Size are disabled.
* Launch DeskTop. Select only the Trash icon. Verify that:
  * Special > Eject Disk is disabled.
  * Special > Check Drive is disabled.
  * File > Duplicate... is disabled.
  * File > Open, File > Get Info, File > Rename..., Special > Lock..., Special > Unlock..., and Special > Get Size are disabled.
* Launch DeskTop. Select a volume. Verify that:
  * Special > Eject Disk is enabled.
  * Special > Check Drive is enabled.
  * File > Duplicate... is disabled.
  * File > Open, File > Get Info, File > Rename..., Special > Lock..., Special > Unlock..., and Special > Get Size are enabled.
* Launch DeskTop. Select a volume icon and the Trash icon. Verify that:
  * Special > Eject Disk is enabled.
  * Special > Check Drive is enabled.
  * File > Duplicate... is disabled.
  * File > Open, File > Get Info, File > Rename..., Special > Lock..., Special > Unlock..., and Special > Get Size are enabled.
* Launch DeskTop. Open a volume window, and select a file. Verify that:
  * Special > Eject Disk is disabled.
  * Special > Check Drive is disabled.
  * File > Duplicate... is enabled.
  * File > Open, File > Get Info, File > Rename..., Special > Lock..., Special > Unlock..., and Special > Get Size are enabled.
* Launch DeskTop. Close all windows. Verify that File > New Folder..., File > Close Window, File > Close All, and everything in the View menu are disabled.
* Launch DeskTop. Open a windows. Verify that File > New Folder..., File > Close Window, File > Close All, and everything in the View menu are enabled.
* Delete the SELECTOR.LIST file from the startup disk, if it was present. Launch DeskTop. Verify that Shortcuts > Edit a Shortcut..., Shortcuts > Delete a Shortcut..., and Shortcuts > Run a Shortcut... are disabled. Add a shortcut. Verify that Shortcuts > Edit a Shortcut..., Shortcuts > Delete a Shortcut..., and Shortcuts > Run a Shortcut... are now enabled.

* Launch DeskTop. Open 3 windows. Close the top one. Verify that the repaint is correct.

* For the following cases, "obscure a window" means to move a window to the bottom of the screen so that only the title bar is visible:
  * Launch DeskTop. Open a window with icons. View > by Name. Obscure the window. View > as Icons. Verify that the window contents don't appear on the desktop. Move the window so the contents are visible. Verify that it contains icons.
  * Launch DeskTop. Open a window with icons. Obscure the window. View > by Name. Verify that the window contents don't appear on the desktop. Move the window so the contents are visible. Verify that the contents display as a list.
  * Launch DeskTop. Open a window with at least two icons. Select the first icon. Obscure the window. Press the right arrow key. Verify that the icons don't appear on the desktop.
  * Launch DeskTop. Open a window with icons. Obscure the window. File > Select All icon. Verify that the icons don't appear on the desktop.
  * Launch DeskTop. Open a window with icons. File > Select All icon. Obscure the window. Click on the desktop to clear selection. Verify that the icons don't appear on the desktop.
  * Launch DeskTop. Open a window with folder icons. Open a second window from one of the folders. Verify that the folder icon in the first window is shaded. Obscure the first window. Close the second window. Verify that the folder icon doesn't appear on the desktop.
  * Launch DeskTop. Open a window with icons. Select (but don't open) a folder. Obscure the window. File > Open. Verify that the folder icon does not appear on the desktop.
  * Launch DeskTop. Open a window with icons. Select (but don't open) a folder containing 127 icons. Obscure the window. File > Open. Verify that the folder icon does not appear on the desktop.
  * Launch DeskTop. Open a window. Obscure the window. File > New Folder, enter a name, OK. Verify that the folder icon doesn't appear on the desktop.
  * Launch DeskTop. Open a window with icons. Obscure the window. File > Quit. Relaunch DeskTop. Verify that the restored window's icons don't appear on the desktop, and that the menu bar is not glitched.
  * Launch DeskTop. Open two windows with icons. Obscure one window. Click on the other window's title bar. Click on the obscured window's title bar. Verify that the window contents don't repaint on the desktop.
  * Launch DeskTop. Open two windows with icons. Activate a window, View > by Name, and then obscure the window. Click on the other window's title bar. Click on the obscured window's title bar. Verify that the window contents don't repaint on the desktop.
  * Launch DeskTop. Open a window with icons. Select an icon. Obscure the window. File > Rename..., enter a new name, OK. Verify that the icon does not paint on the desktop.

* Launch DeskTop. Open a window containing a folder. Open the folder's window. Activate the first window by clicking on it. Activate the second window by clicking on it. Verify that the folder icon is not selected by moving the second window around to force repaints.

* Launch DeskTop. Open a window for a volume icon. Open a folder within the window. Select the volume icon. Special > Check Drive. Verify that both windows are closed.

* Launch DeskTop. Drag a file to a same-volume window so it is moved, not copied. Use File > Copy a File... to copy a file. Verify that the file is indeed copied, not moved.
* Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Drag a file to a same-volume window so it is moved. Configure a shortcut to copy to RAMCard "at first use". Invoke the shortcut. Verify that the shortcut's files were indeed copied, not moved.

* Launch DeskTop. Open a window. Select a file icon. Apple > Control Panels. Verify that the previously selected file is no longer selected.
* Launch DeskTop. Configure a shortcut with the target being a directory. Open a window. Select a file icon. Invoke the shortcut. Verify that the previously selected file is no longer selected.

* Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Configure a shortcut with the target in the root of a volume, and to Copy to RAMCard at first use. Quit DeskTop. Launch Selector. Invoke the shortcut. Verify that the copy count goes to zero and doesn't blank out.
* Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Configure a shortcut with the target in a directory, not the root of a volume, and to Copy to RAMCard at first use. Quit DeskTop. Launch Selector. Invoke the shortcut. Verify that the copy count goes to zero and doesn't blank out.

* Launch DeskTop. Open a window containing many folders. Select up to 7 folders. File > Open. Verify that as windows continue to open, the originally selected folders don't mispaint on top of them. (This will be easier to observe in emulators with acceleration disabled.)

* Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Modify a shortcut. Verify that no prompt is shown. Power cycle and launch DeskTop. Verify that the shortcut modifications are present.
* Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Eject the startup disk. Modify a shortcut. Verify that a prompt is shown asking about saving the changes. Insert the system disk, and click OK. Verify that no further prompt is shown. Power cycle and launch DeskTop. Verify that the shortcut modifications are present.
* Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Eject the startup disk. Modify a shortcut. Verify that a prompt is shown asking about saving the changes. Click OK. Verify that another prompt is shown asking to insert the system disk. Insert the system disk, and click OK. Verify that no further prompt is shown. Power cycle and launch DeskTop. Verify that the shortcut modifications are present.

* Repeat the following cases with the Startup and Control Panel DAs, and the Date DA (on a system without a real-time clock):
  * Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Launch the DA and modify a setting. Verify that no prompt is shown. Power cycle and launch DeskTop. Verify that the modifications are present.
  * Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Eject the startup disk. Launch the DA and Modify a setting. Verify that a prompt is shown asking about saving the changes. Insert the system disk, and click OK. Verify that no further prompt is shown. Power cycle and launch DeskTop. Verify that the modifications are present.
  * Configure a system with a RAMCard. Launch DeskTop, ensure it copies itself to RAMCard. Eject the startup disk. Launch the DA and modify a setting. Verify that a prompt is shown asking about saving the changes. Click OK. Verify that another prompt is shown asking to insert the system disk. Insert the system disk, and click OK. Verify that no further prompt is shown. Power cycle and launch DeskTop. Verify that the modifications are present.

* Launch DeskTop. Select a volume icon. File > Rename.... Enter the name of another volume. Verify that a "That name already exists." alert is shown. Click OK. Verify that the Rename dialog is still showing.
* Launch DeskTop. Open a window. Select a file icon. File > Rename.... Enter the name of file in the same window. Verify that a "That name already exists." alert is shown. Click OK. Verify that the Rename dialog is still showing.
* Launch DeskTop. File > Copy a File.... Select a file, and click OK. Click OK without changing the destination name. Verify that a "That name already exists." alert is shown. Click OK. Verify that the Copy a File dialog is still showing.
* Launch DeskTop. Open a volume window. Open a folder window. Select the volume icon and rename it. Verify that neither window is closed, and volume window is renamed.

* Launch DeskTop. Open a window. Create folders A, B and C. Open A, and create a folder X. Open B, and create a folder Y. Drag A and B into C. Double-click on X. Verify it opens. Double-click on Y. Verify it opens. Open C. Double-click on A. Verify that the existing A window activates. Double click on B. Verify that the existing B window activates.

* Launch DeskTop. Open a window. Create a folder with a short name (e.g. "A"). Open the folder. Drag the folder's window so it covers just the left edge of the icon. Drag it away. Verify that the folder repaints. Repeat for the right edge.

* Repeat the following cases for Special > Format a Disk and Special > Erase a Disk:
  * Launch DeskTop. Run the command. For the new name, enter a volume name not currently in use. Verify that you are not prompted for a new name.
  * Launch DeskTop. Run the command. For the new name, enter the name of a volume in a different slot/drive. Verify that an alert shows, indicating that the name is in use.
  * Launch DeskTop. Run the command. For the new name, enter the name of the current disk in that slot/drive. Verify that you are not prompted for a new name.

* Launch DeskTop. Open a window. File > New Folder..., enter a unique name, OK. File > New Folder..., enter the same name, OK. Verify that an alert is shown. Dismiss the alert. Verify that the input field still has the previously typed name.

* Launch DeskTop. Clear selection by closing all windows and clicking on the desktop. Press Apple+Down. Verify that nothing happens.

* Launch DeskTop. Open a volume window. View > by Name. Open a separate volume window. Open a folder window. Open a sub-folder window. View > by Name. Close the window. Verify DeskTop doesn't crash.

* Launch DeskTop. Create 8 shortcuts. Shortcuts > Add a Shortcut.... Check the first radio button. Pick a file, OK. Enter a name, OK. Verify that a relevant alert is shown.

* Repeat the following cases with these modifiers: Open-Apple, Solid-Apple:
  * Launch DeskTop. Open 3 windows (A, B, C). Hold modifier and press Tab repeatedly. Verify that windows are activated and cycle in forward order (A, B, C, A, B, C, ...).
  * Launch DeskTop. Open 3 windows (A, B, C). Hold modifier and press \` repeatedly. Verify that windows are activated cycle in forward order (A, B, C, A, B, C, ...).
  * Launch DeskTop. Open 3 windows (A, B, C). Hold modifier and shift and press \` repeatedly. Verify that windows are activated cycle in reverse order (B, A, C, B, A, C, ...).
  * On a IIgs: Launch DeskTop. Open 3 windows (A, B, C). Hold modifier and shift and press Tab repeatedly. Verify that windows are activated cycle in reverse order (B, A, C, B, A, C, ...).
  * On a Platinum IIe: Launch DeskTop. Open 3 windows (A, B, C). Hold modifier and shift and press Tab repeatedly. Verify that windows are activated cycle in reverse order (B, A, C, B, A, C, ...).

* Launch DeskTop. Open a volume window containing a folder. Open the folder window. Note that the folder icon is shaded. Close the volume window. Open the volume window again. Verify that the folder icon is shaded.
* Launch DeskTop. Open a volume window. In the volume window, create a new folder F1 and open it. Note that the F1 icon is shaded. In the volume window, create a new folder F2. Verify that the F1 icon is still shaded.
* Launch DeskTop. Open a volume window containing a file and a folder. Open the folder window. Drag the file to the folder icon (not the window). Verify that the folder window activates and updates to show the file.

* Launch DeskTop. Shortcuts > Add a Shortcut... and create a shortcut for a volume directory that is not the first volume on the DeskTop. Shortcuts > Edit a Shortcut... and select the new shortcut. Verify that file picker shows both the correct disk name and the correct full path.

* Configure a system with a RAMCard, and ensure DeskTop is configured to copy itself to RAMCard on start. Launch DeskTop. Open the RAM Disk volume. Open the Desktop folder. Apple > Control Panels. Drag Desk.Acc from the Desktop folder to the Control.Panels window. Verify that an alert is shown that an item can't be movied or copied into itself.

* Launch DeskTop. Open a volume window. Select two files. File > Duplicate.... Leave the filename unchanged and click OK. Verify that an alert is shown, but the dialog is not dismissed. Change the name and click OK. Verify that a prompt is shown for the second file.

* Perform the following tests in DeskTop using MouseKeys mode:
  * Use the arrow keys to move the mouse to the top, bottom, left, and right edges of the screen. Verify that the mouse is clamped to the edges and does not wrap.
  * Select an icon. Press the Return key. Verify that MouseKeys mode is not silently exited, and the cursor is not distorted.
  * Use keys to click on a menu. Without holding the button down, move over the menu items. Verify that the menu does not spontaneously close.
  * Use keys to double-click on an icon. Verify it opens.

* Configure a IIgs via the system control panel to have a RAM disk:
  * Launch DeskTop. Verify that the Ram5 volume is shown with a RAMDisk icon.
  * Configure DeskTop to copy to RAMCard on startup, and restart. Verify it is copied to /RAM5.

* Launch DeskTop. Try to copy files including a GS/OS forked file. Verify that an alert is shown. Verify that if OK is clicked, the operation continues with other files, and if Cancel is clicked the operation is aborted.
* Launch DeskTop. Try to delete files including a GS/OS forked file. Verify that an alert is shown. Verify that if OK is clicked, the operation continues with other files, and if Cancel is clicked the operation is aborted.

# Preview

* Preview a text file; verify that up/down arrow keys scroll.
* Preview a text file; verify that Open-Apple plus up/down arrow keys scroll by page.
* Preview a text file; verify that Solid-Apple plus up/down arrow keys scroll by page.
* Preview a text file; verify that Escape key exits.
* Preview an image file; verify that Escape key exits.
* Preview an image file on IIgs or with RGB card; verify that space bar toggles color/mono.

# Desk Accessories

* Run Apple > Calculator. Drag Calculator window over a volume icon. Then drag calculator to the bottom of the screen so that only the title bar is visible. Verify that volume icon redraws properly.

* Run Apple > Calculator. Drag Calculator window to bottom of screen so only title bar is visible. Type numbers on the keyboard. Verify no numbers are painted on screen.

* Configure a system with a realtime clock. Launch DeskTop. Run the Date desk accessory. Press Escape key. Verify the desk accessory exits. Repeat with the Return key.

* Configure a system with a Mockingboard and a Zip Chip, with acceleration enabled (MAME works). Launch DeskTop. Run the This Apple DA. Verify that the Mockingboard is detected.

* Run DeskTop on a system without a system clock. Run Apple > Control Panels > Date. Set date. Reboot system, and re-run DeskTop. Create a new folder. Use File > Get Info. Verify that the date was saved/restored.

* On a system with a system clock, invoke Apple > Control Panels > Date. Verify that the date is read-only.

* Open a folder containing directory. Open a folder by double-clicking. Apple > Sort Directory. Verify that files are sorted by type/name.

* Launch DeskTop. Run Apple > Key Caps desk accessory. Turn Caps Lock off. Hold Apple (either one) and press the Q key. Verify the desk accessory exits.

* Launch DeskTop. Apple > Screen Savers. Select Melt. File > Open (or Apple+O). Click to exit. Press Apple+Down. Click to exit. Verify that the File menu is not highlighted.

* Launch DeskTop. Apple > About Apple II DeskTop. Click anywhere on the screen. Verify that the dialog closes.
* Launch DeskTop. Apple > About Apple II DeskTop. Press any non-modifier key screen. Verify that the dialog closes.

* Launch DeskTop, invoke Control Panel DA. Under Mouse Tracking, toggle Slow and Fast. Verify that the mouse cursor doesn't warp to a new position, and that the mouse cursor doesn't flash briefly on the left edge of the screen.

* Run System Speed DA. Click Normal then click OK. Verify DeskTop does not lock up.
* Run System Speed DA. Click Fast then click OK. Verify DeskTop does not lock up.
* Run DeskTop on a IIc. Launch Control Panel > System Speed. Click Normal and Fast. Verify that display does not switch from DHR to HR.

* Put `SHOW.IMAGE.FILE` in `DESK.ACC`, start DeskTop.
    * Select no icon, select DA from Apple menu. Verify nothing happens.
    * Select volume icon, select DA from Apple menu. Verify nothing happens.
    * Select image file icon, select DA from Apple menu. Verify image is shown.
* Put `SHOW.TEXT.FILE` in `DESK.ACC`, start DeskTop.
    * Select no icon, select DA from Apple menu. Verify nothing happens.
    * Select volume icon, select DA from Apple menu. Verify nothing happens.
    * Select text file icon, select DA from Apple menu. Verify text is shown.
* Put `SHOW.FONT.FILE` in `DESK.ACC`, start DeskTop.
    * Select no icon, select DA from Apple menu. Verify nothing happens.
    * Select volume icon, select DA from Apple menu. Verify nothing happens.
    * Select font file icon, select DA from Apple menu. Verify font is shown.

* Configure a device multiple drives connected to a Smartport controller on a higher slot, a single drive connected to a Smartport controller in a lower slot. Launch DeskTop, run the This Apple DA. Verify that the name on the lower slot doesn't have an extra character at the end.

* Run on Laser 128. Launch DeskTop. Copy a file to Ram5. Launch This Apple DA, close it. Verify that the file is still present on Ram5.


# Selector

* Launch Selector, invoke BASIC.SYSTEM. Ensure /RAM exists.
* Launch Selector, invoke DeskTop, File > Quit, run BASIC.SYSTEM. Ensure /RAM exists.

* Launch Selector. Type Open-Apple and R. Ensure "Run a Program..." dialog appears
* Launch Selector. Type Solid-Apple and R. Ensure "Run a Program..." dialog appears
* Launch Selector. Type Open-Apple and 6. Ensure machine boots from Slot 6
* Launch Selector. Type Solid-Apple and 6. Ensure machine boots from Slot 6

* Launch Selector. Eject the disk with DeskTop on it. Type Q (don't click). Dismiss the dialog by hitting Esc. Verify that the dialog disappears, and the Apple menu is not shown.

# Disk Copy

* Launch DeskTop. Special > Disk Copy.... File > Quit. Special > Disk Copy.... Ensure drive list is correct.

* Launch DeskTop. Special > Disk Copy.... Press Escape key. Verify that menu keyboard mode starts.
* Launch DeskTop. Special > Disk Copy.... Press Open-Apple Q. Verify that DeskTop launches.
* Launch DeskTop. Special > Disk Copy.... Press Solid-Apple Q. Verify that DeskTop launches.

* Launch DeskTop. Special > Disk Copy. Copy a disk with more than 999 blocks. Verify thousands separators are shown in block counts.
* Launch DeskTop. Special > Disk Copy.... Copy a 32MB disk image using Quick Copy (the default mode). Verify that the screen is not garbled, and that the copy is successful.
* Launch DeskTop. Special > Disk Copy.... Copy a 32MB disk image using Disk Copy (the other mode). Verify that the screen is not garbled, and that the copy is successful.


# Alerts

* Launch DeskTop. Trigger an alert with only OK (e.g. running a shortcut with disk ejected). Verify that Escape key closes alert.
* Launch Selector. Trigger an alert with only OK (e.g. running an shortcut with disk ejected). Verify that Escape key closes alert.
* Launch DeskTop. Run Special > Disk Copy. Trigger an alert with only OK. Verify that Escape key closes alert.

# File Picker

This covers:

* Selector: File > Run a File...
* DeskTop: File > Copy a File...
* DeskTop: File > Delete a File...
* DeskTop: Shortcuts > Add a Shortcut...
* DeskTop: Shortcuts > Edit a Shortcut...

Test the following in all of the above, except where called out specifically:

* Browse to a directory containing multiple files. Hold an Apple key and start typing a filename. Verify that a prefix-matching file or the subsequent file is selected, or the last file. For example, if the files "Alfa", "November" and "Whiskey" are present, typing "A" selects "Alfa", typing "AB" selects "Alfa", typing "AL" selects "Alfa", typing "ALFAA" selects "November", typing "B" selects "November", typing "Z" selects "Whiskey". Repeat including filenames with numbers and periods.
* Browse to a directory containing multiple files. Hold an Apple key and start typing a filename. Move the mouse, or press a key without holding Apple. Hold an Apple key and start typing another filename. Verify that the matching is reset.
* Browse to a directory containing no files. Hold an Apple key and start typing a filename. Verify nothing happens.
* Browse to a directory containing one or more files starting with lowercase letters (AppleWorks or GS/OS). Verify the files appear with correct names. Press Apple+letter. Verify that the first file starting with that letter is selected.
* Launch DeskTop. Shortcuts > Add a Shortcut.... Press Apple+1 through Apple+5. Verify that the radio buttons on the right are selected.

* Browse to a directory containing one or more files with starting with mixed case (AppleWorks or GS/OS). Verify the filenames appear with correct case.
* Verify that the device order (via clicking Change Drive or pressing Tab) matches the order of volumes shown on the DeskTop (boot device first, etc). Hold either Apple key when clicking Change Drive or pressing Tab, and verify that the order is reversed.
  * On a IIgs: Hold the Shift key when clicking Change Drive or pressing Tab, and verify that the order is reversed.
  * On a Platinum IIe: Hold the Shift key when clicking Change Drive or pressing Tab, and verify that the order is reversed.
* Browse to a directory containing 8 files. Verify that the scrollbar is inactive.
* Browse to a directory containing 9 files. Verify that the scrollbar is active. Press Apple+Down. Verify that the scrollbar thumb moves to the bottom of the track.

* Launch DeskTop. File > Copy a File.... Enter text in the first field. Enter text in the second field. Click in the middle of the text in the first field. Verify that the IP is positioned near the click. Click in the middle of the text in the second field. Verify that the IP is positioned near the click.

* Ensure the default drive has 10 or more files. Verify that an active scrollbar appears in the file list. Click OK. Click Cancel. Verify that the scrollbar is scrolled to the top.

* Launch DeskTop. Special > Format a Disk.... Select a drive with no disk, let the format fail and cancel. File > Copy a File.... Verify that the file list is populated.

* Launch DeskTop. Shortcuts > Add a Shortcut.... Enter text in the first field. Move the IP into the middle of the text. Click in the second field. Verify that the first field is not truncated.
* Launch DeskTop. Shortcuts > Add a Shortcut.... Enter a name in the first field. Move the IP into the middle of the text. Click OK. Verify that the first field is not truncated.
* Launch DeskTop. File > Copy a File.... Enter text in the first field. Move the IP into the middle of the text. Click in the second field. Verify that the first field is not truncated.
* Launch DeskTop. File > Copy a File.... Enter a name in the first field. Move the IP into the middle of the text. Click OK. Verify that the first field is not truncated.

* Launch DeskTop. Shortcuts > Add a Shortcut.... Enter text in the second field. Move the IP into the middle of the text. Click in the first field. Verify that the second field is not truncated.
* Launch DeskTop. Shortcuts > Add a Shortcut.... Enter a name in the second field. Move the IP into the middle of the text. Click Cancel. Verify that the second field is not truncated.
* Launch DeskTop. File > Copy a File.... Enter text in the second field. Move the IP into the middle of the text. Click in the first field. Verify that the second field is not truncated.
* Launch DeskTop. File > Copy a File.... Enter a name in the second field. Move the IP into the middle of the text. Click Cancel. Verify that the second field is not truncated.

* Create a directory, and in the directory create a file named "A.B" then a file named "A". Browse to the directory. Verify "A" sorts before "A.B".

* Browse to a directory with more than 8 files, with at least 1 directory. Note the first directory name. Scroll down so that the first file in the list is not seen. Pick a file and click OK. Verify that the first directory is visible in the list.