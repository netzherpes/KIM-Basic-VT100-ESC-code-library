# KIM-Basic-VT100-ESC-code-libraries
usage of terminal comands in KIM-1 Basic

ESC Sequences are 'hidden' characters, that, when send to a terminal, change the attributes of the terminal window.
You can set the cursor position, change the foreground or background color, clear the screen, etc.
To use them you need to send the exact sequence to the terminal. 
It always starts with "ESC\["

Take a look in the example files to 


The ESC commands are stored as variables (see the example program).
To use them, insert the definitions in your basic file and print the variables

Part I
------
Simple terminal codes and how to use them in KIM-BASIC: 

POSITIONS
---------
UP$ UP<br>
DO$ DOWN<br>
LEF$ LEFT<br>
RIG$ RIGHT<br>
HM$ HOME TO 0-0<br>

COLORS
------
CL$ CLEAR SCREEN<br>
RED$ RED<br>
GRE$ GREEN<br>
BLU$ BLUE<br>
YEL$ YELLOW<br>
MAG$ MAGENTA<br>
CYA$ CYANO<br>
RV$ REVERSE<br>
NO$ MAKE ALL NORMAL<br>

TODO:<br>
eliminate the Automatic Linefeed after 72 sended chars with a poke... 


Part II:
--------

Positioning the cursor with esc terminal codes

The command to set the cursors pos in a terminal window is _really_ simple:

    (ESC)[x;yH

where x and y are the coordinates from top left.

If you send this command, the corsor position changes  immediately to x,y. 

Problems with Kim-1 Basic:

number variables (not strings) are presented with a leading and ending space. Otherwise you could not read a line of integers and distinguish the single numbers (12345 could be 12 and 345 or 123 and 45). 

But the terminal commands we send, must be precise. So we need to get rid of those spaces:

 1. convert the integer into a string
 2. cut the spaces off

        X$=STR$(X):X$=MID$(X$,2)

Now we can insert our positions into the ‚move to‘ order.

    PRINT ES$+X$+";"+Y$+"H"+"*";

A lot of commands for a simple ‚move to‘, a lot of dirtyhacks, but in the end you are able to adress any screen position. 
