"OLAB" by "Bart Massey"

Book - Basic Literacy

Chapter - Reading

[XXX: IMHO this should eventually rolled into the Standard Rules in some form. Having "read" be a synonym for "examine" is bizarre.]

Reading is an action applying to one visible thing and requiring light.

A thing can be readable. A thing is rarely readable.

Every thing has an indexed text called the read text.

Understand "read [thing]" as reading.

To say error (T - a thing) is unreadable (this is the say  error is unreadable rule): say "[The T] is unreadable."

Check an actor reading when the noun is not readable (this is the check readability rule): instead say error the noun is unreadable.

To say the read text of (T - a thing) (this is the say the read text rule): Say "[command clarification break][read text of T][paragraph break][command clarification break]".

Instead of reading when the read text of the noun is empty (this is the instead of reading something blank rule): say "[The noun] is blank."

Carry out reading (this is the carry out reading rule): say the read text of the noun.

Carry out someone reading (this is the carry out someone reading rule): say "[The person asked] reads [the noun]."

Chapter - Writing

A thing can be writable. A thing is rarely writable.

A writing tool is a kind of thing.

To say error too many writables (this is say error several things to write on rule): say "There are several things to write on."

To say error no writables (this is the say error nothing to write on rule): say "There is nothing to write on."

Writing it on is an action applying to one topic and one touchable thing and requiring light. Understand "write [text]" or "write [text] on [thing]" as writing it on.

Rule for supplying a missing second noun when writing (this is the supply a writable thing rule): let N be the number of touchable writable things; if N is greater than one, instead say error too many writables; if N is zero, instead say error no writables; now the second noun is a random touchable writable thing.

To say error (T - a thing) is not for writing on (this is say error not for writing on rule): say "[The T] is not for writing on."

To say implicitly taking (T - a thing) (this is the say implicitly taking a thing for basic literacy rule): say "(taking [the T])[command clarification break]".

To say error missing writing tool: say "You need something to write with."

Before writing when the player does not carry a writing tool and a writing tool is touchable (this is the obtain a writing tool rule): let M be a random touchable writing tool; say implicitly taking M; silently try taking M.

Check writing (this is the check writing rule): unless the second noun is writable, instead say error the second noun is not for writing on; unless the player carries a writing tool, instead say error missing writing tool.

The text written is an indexed text which varies.

Carry out writing (this is the carry out writing rule): let T be an indexed text; let T be the topic understood; now the text written is T; if the read text of the second noun is "",  now the read text of the second noun is T; otherwise now the read text of the second noun is "[read text of the second noun][paragraph break][T]".

Report writing (this is the report writing rule): say  "You write on [the second noun]."

Chapter - Erasing

A thing can be erasable. A thing is usually erasable. An erasing tool is a kind of thing.

To say error too many erasables (this is the say error several erasables rule): say "There are several things to erase."

To say error no erasables (this is the say error no erasables rule): say "There is nothing to erase."

Erasing is an action applying to one touchable thing and requiring light. Understand "erase" or "erase [thing]" as erasing.

Rule for supplying a missing noun when erasing (this is the choose an erasable rule): let N be the number of touchable writable things; if N is greater than one, instead say error too many erasables; if N is zero, instead say error no erasables; now the noun is a random touchable writable thing.

To say error (T - a thing) need not be erased (this is the say error no writing rule): say "There is no writing on [the T] to erase."

To say error (T - a thing) cannot be erased (this is the say error not erasable rule): say "[The T] is not erasable."

To say error no erasing tool (this is the say error no erasing tool rule): say "You need something to erase with."

Before erasing when the player does not carry an erasing tool and an erasing tool is touchable (this is the obtain an erasing tool rule): let E be a random touchable erasing tool; say implicitly taking E; silently try taking E.

Check erasing (this is the check erasing rule): unless the noun is writable and the read text of the noun is not empty, instead say error the noun need not be erased; unless the noun is erasable, instead say error the noun cannot be erased; unless the player carries an erasing tool, instead say error no erasing tool.

Carry out erasing (this is the carry out erasing rule): now the read text of the noun is "".

Report erasing (this is the report erasing rule): say "You erase [the noun]."

Book - OLAB

The OLAB is a room. "This room is bare except for a whiteboard mounted on one wall. The whiteboard has a metal tray at the bottom."

The whiteboard is fixed in place readable writable scenery in the OLAB. The description is "A regulation-issue whiteboard with a metal tray.[if read text of the whiteboard is not empty] [the contents of the whiteboard][end if]". The read text is "SCRIBBLE ON ME". Understand "board" as the whiteboard. Understand "scribble [text] on [whiteboard]" as writing it on.

To say the contents of the whiteboard: say "Scribbled on the whiteboard is:"; silently try reading the whiteboard.

A scenery supporter called the metal tray is part of the whiteboard. The description is "This narrow metal tray is built to support markers and erasers."

A marker is a kind of writing tool. A marker cap is a kind of thing. The description of a marker cap is usually "This cap keeps the marker from drying up." A marker cap is part of every marker. Does the player mean doing something with the marker cap: it is unlikely. Instead of doing something other than examining with the marker cap: say "There is no need to fiddle with the marker cap."

The black marker is a marker on the metal tray. The description is "This is as generic a whiteboard marker as you'll ever hope to find. It has a black cap."

Report writing it on (this is the detailed report writing rule): say "You take the cap off the marker, write on [the second noun], and replace the cap carefully." The detailed report writing rule is listed instead of the report writing rule in the report writing it on rulebook.

An erasing tool called an eraser is on the metal tray. The description is "A classic fuzzy whiteboard eraser, none too clean."

The metal trashcan is a closed openable fixed in place container in the OLAB. The description is "A nondescript metal trashcan with a hinged lid."

Test me with "read whiteboard / write hello on whiteboard / write goodbye on whiteboard / read whiteboard / erase / read whiteboard / open trashcan / put eraser in trashcan / close trashcan / write hello on whiteboard / erase".
