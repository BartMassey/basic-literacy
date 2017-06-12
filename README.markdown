<h3> Basic Literacy Extension for Inform7</h3>

<h2> The Extension </h2>

This Inform 7 extension provides commands for reading, writing and erasing text on arbitrary things. The "read" </br>
command here replaces the default use of "read" as an "examine" command.

<h2> Getting Started </h2>

- Clone the repository or download it. Open Inform7 and select File > Install Extension. 

- Include the extension by including the line "Include Basic Literacy by Bart Massey." after your project's heading.

- Mark a thing as "Writable" to inherit all characteristics from Basic Literacy. Add an if-statement to read its contents unless it's empty.

	
		The whiteboard is writable scenery in the OLAB. The description is "A regulation-issue whiteboard with a
		 metal tray.[if read text of the whiteboard is not empty] [the contents of the whiteboard][end if]".


- A writing tool is used to write on the writable Thing. Make a new kind of writing tool.

		A marker is a kind of writing tool. 

- An erasing tool object is used to erase the contents written on your writable Thing.
	
		An erasing tool called an eraser is on the desk.

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

Look for a section at the end titled "OLAB" to find an implementation of the extension.
Look for a section at the end titled "The Poet's Notebook" to find an implementation of the extension.

<h2> Credits </h2>

Basic Literacy by Bart Massey
Copyright © 2012 Bart Massey  
Released under the Creative Commons Attribution 3.0 United States license:  
http://creativecommons.org/licenses/by/3.0/us/