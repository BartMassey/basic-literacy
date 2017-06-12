asic Literacy by Bart Massey begins here.

"Provides objects and actions for (proper) reading, writing and erasing."

[ Copyright © 2012 Bart Massey]
[ Released under the Creative Commons Attribution 3.0 United States license: http://creativecommons.org/licenses/by/3.0/us/ ]

Chapter - Reading

[XXX: IMHO this should eventually rolled into the Standard Rules in some form. Having "read" be a synonym for "examine" is bizarre.]

Reading is an action applying to one visible thing and requiring light.

Every thing has an indexed text called the read text. The read text is usually "".

Understand "read [thing]" as reading.

To say error (the thing read - a thing) has no read text (this is the say  error no read text rule): say "[The thing read] is unreadable."

Check an actor reading a thing (called the thing read) (this is the check reading a thing rule): if the read text of the thing read is empty, instead say error the thing read has no read text.

To say the read text of (the thing read - a thing) (this is the say the read text rule): Say "[command clarification break][read text of the thing read][paragraph break][command clarification break]".

Carry out an actor reading a thing (called the thing read) (this is the read rule): say the read text of the thing read.

Chapter - Writing

A thing can be writable. A thing is rarely writable.

A writing tool is a kind of thing.

To say error too many writables (this is say error several things to write on rule): say "There are several things to write on."

To say error no writables (this is the say error nothing to write on rule): say "There is nothing to write on."

Writing it on is an action applying to one topic and one touchable thing and requiring light. Understand "write [text]" or "write [text] on [thing]" as writing it on.

Rule for supplying a missing second noun when writing (this is the supply a writable thing rule): let N be the number of touchable writable things; if N is greater than one, instead say error too many writables; if N is zero, instead say error no writables; now the second noun is a random touchable writable thing.

To say error (T - a thing) is not for writing on (this is say error not for writing on rule): say "[The T] is not for writing on."

To say implicitly taking (T - a thing) (this is the say implicitly taking a thing for basic literacy rule): say "(taking [the T])[command clarification break]".

Rule for implicitly taking a writing tool (this is the implicitly take a writing tool rule): let M be a random touchable writing tool; silently try taking M; say implicitly taking M.

To say error missing writing tool: say "You need something to write with."

Check writing it on (this is the check writing rule): if the second noun is not writable, instead say error the second noun is not for writing on; if the player carries a writing tool, rule succeeds; if a writing tool is touchable, abide by the implicitly take a writing tool rule; instead say error missing writing tool.

The text written is an indexed text which varies.

Carry out writing it on (this is the writing rule): let T be an indexed text; let T be the topic understood; now the text written is T; if the read text of the second noun is "",  now the read text of the second noun is T; otherwise now the read text of the second noun is "[read text of the second noun][paragraph break][T]".

Report writing it on (this is the report writing rule): say  "You write on [the second noun]."

Chapter - Erasing

An erasing tool is a kind of thing.

To say error too many erasables (this is the say error several erasables rule): say "There are several things to erase."

To say error no erasables (this is the say error no erasables rule): say "There is nothing to erase."

Erasing is an action applying to one touchable thing and requiring light. Understand "erase" or "erase [thing]" as erasing.

Rule for supplying a missing noun when erasing (this is the choose an erasable rule): let N be the number of touchable writable things; if N is greater than one, instead say error too many erasables; if N is zero, instead say error no erasables; now the second noun is a random touchable writable thing.

To say error (T - a thing) need not be erased (this is the say error no writing rule): say "There is no writing on [the T] to erase."

To say error (T - a thing) is not erasable (this is the say error not erasable rule): say "[The T] is not erasable."

To say error no erasing tool (this is the say error no erasing tool rule): say "You need something to erase with."

Rule for implicitly taking an erasing tool (this is the implicitly take an erasing tool rule): let E be a random erasing tool; silently try taking E; say implicitly taking E.

Check erasing (this is the check erasing rule): if the noun is not writable or the read text of the noun is empty, instead say error the noun need not be erased; if the noun is not writable, instead say error the noun is not erasable; if the player carries an erasing tool, rule succeeds; if an erasing tool is touchable, abide by the implicitly take an erasing tool rule; instead say error no erasing tool.

Carry out erasing (this is the erasing rule): now the read text of the noun is "".

Report erasing (this is the report erasing rule): say "You erase [the noun]."

Basic Literacy ends here.

---- Documentation ----
This module extends Inform 7 by providing some basic actions and types that allow the player to read, write and erase text. This is implemented by giving every thing an indexed text called the "read text". With this module loaded, the "read" command no longer invokes the "examining" action. Instead, "read [thing]" shows the read text of the thing read.
Allowing the player to write arbitrary text on things is also allowed. The thing to be written on must have the "writable" property, and the player must have access to a "writing tool". Subsequent writes will append new paragraphs to the read text of the thing written.
Allowing the player to erase the text on things is also allowed. The thing to be written on must have the "writable" property, and the player must have access to an "erasing tool".
Example: ** OLAB - A whiteboard on which the player can make notes
This is a really straightforward example.
	*: "OLAB" by "Bart Massey"
	
	When play begins: say "The Poet's bedroom is place where vulnerability and fragile emotions are encouraged. (The poet is a very sensitive person, be careful about what you write in his notebook.)"

	The Poet's Bedroom is a room. "This is where the Poet sits down to think of life and reflects upon existence."

	The desk is a fixed in place supporter in the Poet's Bedroom.

	The Poet's Notebook is erasable scenery on the desk. The description is "A notebook to transform thoughts and tears into words. [if read text of the Poet's Notebook is not empty] [read text][end if]". Understand "notebook" as the Poet's Notebook. Understand "write [text] on [Poet's Notebook]" as writing it on.

	To say the contents of the notebook: say "The notebook reads:"; silently try reading the notebook.

	The pen is a marker on the desk. The description is "A regular pen. Many stories have been written with this old friend."

	An erasing tool called an eraser is on the desk. The description is "An eraser. Use this to erase your Poetry, but don't be too harsh on yourself, self judgement may hurt your self esteem."
