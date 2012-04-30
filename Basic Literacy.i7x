Basic Literacy by Bart Massey begins here.

"Provides objects and actions for (proper) reading, writing and erasing."

[ Copyright © 2012 Bart Massey]
[ Released under the Creative Commons Attribution 3.0 United States license: http://creativecommons.org/licenses/by/3.0/us/ ]

Chapter - Reading

[XXX: IMHO this should eventually rolled into the Standard Rules in some form. Having "read" be a synonym for "examine" is bizarre.]

Reading is an action applying to one visible thing and requiring light.

Every thing has an indexed text called the read text. The read text is usually "".

Understand "read [thing]" as reading.

To say error (the thing read - a thing) has no read text (this is the say no read text error rule): say "[The thing read] has no text to read."

Check an actor reading a thing (called the thing read) (this is the check reading a thing rule): if the read text of the thing read is empty, instead say error the thing read has no read text.

To say the read text of (the thing read - a thing) (this is the say the read text rule): Say "[command clarification break][read text of the thing read][paragraph break][command clarification break]".

Carry out an actor reading a thing (called the thing read) (this is the read a thing rule): say the read text of the thing read.

Chapter - Writing

A thing can be writable. A thing is rarely writable.

A writing tool is a kind of thing.

To say too many writables (this is the say too many writables rule): say "There are several things to write on."

To say no writables (this is the say no writables rule): say "There is nothing to write on."

Writing it on is an action applying to one topic and one thing and requiring light. Understand "write [text]" or "write [text] on [thing]" as writing it on. Rule for supplying a missing second noun when writing: let N be the number of touchable writable things; if N is greater than one, instead say too many writables; if N is zero, instead say no writables; now the second noun is a random touchable writable thing.

Check writing it on when the second noun is not writable (this is the check writable rule): instead say "[The second noun] is not for writing on."

To say taking the writing tool (M - a writing tool): say "(taking [the M])[command clarification break]".

Check writing it on when the player does not carry a writing tool and a writing tool is touchable  (this is the take a writing tool rule): let M be a random touchable writing tool; silently try taking M; say taking the writing tool M.

Check writing it on when the person asked does not carry a writing tool (this is the check for writing tool rule): instead say "You need something to write with."

The text written is an indexed text which varies.

Carry out writing it on (this is the carry out writing rule): let T be an indexed text; let T be the topic understood; now the text written is T; if the read text of the second noun is "",  now the read text of the second noun is T; otherwise now the read text of the second noun is "[read text of the second noun][paragraph break][T]".

Report writing it on (this is the report writing rule): say  "You write on [the second noun]."

Chapter - Erasing

An erasing tool is a kind of thing.

To say too many erasables (this is the say too many erasables rule): say "There are several things to erase."

To say no erasables (this is the say no erasables rule): say "There is nothing to erase."

Erasing is an action applying to one thing and requiring light. Understand "erase" or "erase [thing]" as erasing. Rule for supplying a missing noun when erasing: let N be the number of touchable writable things; if N is greater than one, instead say too many erasables; if N is zero, instead say no erasables; now the second noun is a random touchable writable thing.

Check erasing when the noun is not writable  (this is the check erasable rule): instead say "[The noun] is not erasable."

Check erasing when the player does not carry an erasing tool and an erasing tool is touchable: let E be a random erasing tool; silently try taking E; say "(taking [the E])[command clarification break]".

Check erasing when the player does not carry an erasing tool: instead say "You need something to erase with."

Carry out erasing: now the read text of the noun is "".

Report erasing: say "You erase [the noun]."

Basic Literacy ends here.

---- Documentation ----

This module extends Inform 7 by providing some basic actions and types that allow the player to read, write and erase text. This is implemented by giving every thing an indexed text called the "read text". With this module loaded, the "read" command no longer invokes the "examining" action. Instead, "read [thing]" shows the read text of the thing read.

Allowing the player to write arbitrary text on things is also allowed. The thing to be written on must have the "writable" property, and the player must have access to a "writing tool". Subsequent writes will append new paragraphs to the read text of the thing written.

Allowing the player to erase the text on things is also allowed. The thing to be written on must have the "writable" property, and the player must have access to an "erasing tool".

Example: ** OLAB - A whiteboard on which the player can make notes

This is a really straightforward example.

	*: "OLAB" by "Bart Massey"

	The OLAB is a room. "This room is bare except for a whiteboard mounted on one wall."

	The whiteboard is writable scenery in the OLAB. The description is "A regulation-issue whiteboard with a metal tray.[if read text of the whiteboard is not empty] [the contents of the whiteboard][end if]". The read text is "SCRIBBLE ON ME". Understand "board" as the whiteboard. Understand "scribble [text] on [whiteboard]" as writing it on.

	To say the contents of the whiteboard: say "Scribbled on the whiteboard is:"; silently try reading the whiteboard.

	The metal tray is a supporter. It is part of the whiteboard. The description is "This narrow metal tray is built to support markers and erasers."

	A marker is a kind of writing tool. The black marker is a marker on the metal tray. The description is "This is as generic a black whiteboard marker as you'll ever hope to find." 

	An eraser is an erasing tool. The description is usually "A classic fuzzy whiteboard eraser, none too clean." On the metal tray is an eraser.
	