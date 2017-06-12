<h3> Basic Literacy Extension for Inform7</h3>

<h2> The Extension </h2>

This Inform 7 extension provides commands for reading, writing and erasing text on arbitrary things. The "read" </br>
command here replaces the default use of "read" as an "examine" command.

<h2> Getting Started </h2>

- Clone the repository or download it. Open Inform7 and select File > Install Extension. 

- Include the extension by including the line "Include Basic Literacy by Bart Massey." after your project's heading.

- Mark a thing as "Erasable" to inherit all characteristics from Basic Literacy. Add an if-statement to read it's contents unless it's empty.

	
		The Poet's Notebook is erasable scenery on the desk. The description is "A notebook to transform thoughts 
		and tears into words.  [if read text of the Poet's Notebook is not empty] [read text][end if]". Understand 
		"notebook" as the Poet's Notebook. Understand "write [text] on [Poet's Notebook]" as writing it on.


- A "marker" is a Thing used to write on your new Writable Thing. Make a new thing and inherit from the Marker.

		The pen is a marker on the desk. The description is "A regular pen. Many stories have 
		been written with this old friend."

- An erasing tool object is used to erase the contents written on your writable Thing.
	
		An erasing tool called an eraser is on the desk. The description is "An eraser. Use this to
		erase your Poetry, but don't be too harsh on yourself, self judgement may hurt your self esteem."

- Test the extension with the following commands:

	- read 
	- write hello 
	- erase 
	- read  
	- open trashcan 
	- put black eraser in trashcan 
	- close trashcan

- The extension contains the following Things for testing: [whiteboard, black marker, black erase, blue eraser, trashcan]

<h2> Example </h2>

Open the example project titled "The Poet's Notebook" to find an implementation of the extension.

</hr>

Basic Literacy by Bart Massey
Copyright © 2012 Bart Massey  
Released under the Creative Commons Attribution 3.0 United States license:  
http://creativecommons.org/licenses/by/3.0/us/