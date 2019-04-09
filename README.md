**Preview/Cheatsheet:** the png file

# Nizo's ultimate Keyboard
Inspired by 40% Keyboards like the [MiniVan](https://i.ytimg.com/vi/g6bKhcrlnn8/maxresdefault.jpg) and the [Neo Layout](https://www.neo-layout.org/).

This is an AutoHotkey Script I use.

**Requirements:** [AutoHotkey](https://www.autohotkey.com/)

* **For Dvorak by Nizo:** this is the original script, written for use on [my custom layout](https://github.com/theNizo/DvorakByNizo-German), which is a german [dvorak](https://en.wikipedia.org/wiki/Dvorak_Simplified_Keyboard) version. / Das ist das originale Skript, welches für [mein Eigenes Layout](https://github.com/theNizo/DvorakByNizo-German) geschrieben wurde.
* **For US Dvorak (coming soon):** This is made to be used with the standard US Dvorak keyboard
* **For QWERTY (coming soon):** Written for QWERTY
* **For QWERTZ (coming soon/kommt bald):** Made for QWERTZ (German version) / Für QWERTZ

## Install
Deutscher Teil im Anschluss

1. Download the file for the preferred layout
2. place it somewhere
3. Put it into Autostart (In Windows: Win+R, type "shell:startup", enter and create a new shortcut to the file)
4. Enjoy

## Issues

**How can it activate CapsLock?** Dvorak: Caps+K; QWERTY/QWERTZ: Caps+V

**The spaces are inserted after I release the space bar** This is necessary for some shortcuts. If it's really bothering, edit the file. Go down to the section with the Space Bar Hotkeys and delete it/turn it into a comment (put /* before and */ after it)

**I cant deactivate NumLock** Numlock is something that bothered me all the time, because it is usually turned off. With the script, it's forced to always be on. If you don't want that, remove the second line (SetNumLockState) or put a ; in front.

## Installation

1. Datei für gewünschtes Layout herunterladen
2. Irgendwo hin speichern
3. Zu Autostart hinzufügen (In Windows: Win+R, "shell:startup" eingen, Enter, Shortcut erstellen)
4. Es toll finden (oder auch nicht, wer weiß)

## Probleme

**Wie kann ich CapsLock aktivieren?** Caps+RShift

**Abstände werden erste eingefügt, wenn ich die Leertaste loslasse.** Das liegt an den Hotkeys, die mit der Leertaste funktionieren. Wenn es zu lästig ist, bitte das Skript bearbeiten, zu dam Teil mit den Space Hotkeys Scrollen und entweder rauslöschen, oder auskommentieren (/* davor und */ danach hinschreiben).

**Ich kann NumLock nicht deaktivieren** NumLock hat mich meistens genervt, weil ich das Nummernfeld nur zum Zahlen eingeben verwende, aber das standardmäßig ausgeschaltet ist. Im Skript wird es zwangsweise eingeschaltet. Wenn man das nicht will, 2. Zeile (SetNumLockState) entfernen oder auskommentieren (; davorsetzten).
