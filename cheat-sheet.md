# Normal Mode

`zz` Redraw with current line at center of window

`@:` Repeat the last Ex command

`@@` Repeat the previous @{0-9a-z":*}

`<c-r>=` Access the expression register (Normal to Command)

## Operator Commands

`c` Change

`d` Delete

`y` Yank into register

`g~` Swap case

`gu` Make lowercase

`gU` Make uppercase

`>` Shift right

`<` Shift left

`=` Autoindent

`!` Filter {motion} lines through an external program

# Insert Mode

`<c-h>` Delete back one character (backspace)

`<c-w>` Delete back one word

`<c-u>` Delete back to start of line

`<esc>` Switch to Normal mode

`<c-[>` Switch to Normal mode

`<c-o>` Switch to Insert Normal mode. Insert Normal mode allows user to execute a single Normal mode command and then returns to Insert mode immediately.

`<c-r>{register}` Paste {register} content

## Replace Mode

`r{char}` Replace one character and go back to Normal mode

`R` Enter Replace mode

# Visual Mode

`<c-v>` Enable block-wise Visual mode

`gv` Reselect the last visual selection

`o` Go to other end of highlighted text

`u` Make lowercase

`U` Make uppercase

`r{char}` Replace all selected characters by {char}

# Command-Line Mode

`:[range]delete [x]` Delete specified lines [into register x]

`:[range]yank [x]` Yank specified lines [into register x]

`:[line]put [x]` Put the text from register x after the specified line

`:[range]copy {address}` Copy the specified lines to below the line specified by {address}

`:[range]move {address}` Move the specified lines to below the line specified by {address}

`:[range]join` Join the specified lines

`:[range]normal {commands}` Execute Normal mode {commands} on each specified line

`:[range]substitute/{pattern}/{string}/[flags]` Replace occurrences of {pattern} with {string} on each specified line

`:[range]global/{pattern}/[cmd]` Execute the Ex command [cmd] on all specified lines where the {pattern} matches

`<c-u>` delete backward to the start of the line

`<c-w>` delete backward to the start of the previous word

`<c-r>{register}` Insert contents of {register}

`<c-d>` Reveal a list of possible completions

`<c-r><c-w>` Copies the word under the cursor and inserts it at the command-line prompt

## Shell

`:shell` Start a shell (return to Vim by typing exit) 

`:!{cmd}` Execute {cmd} with the shell

`:read !{cmd}` Execute {cmd} in the shell and insert its standard output below the cursor

`:[range]write !{cmd}` Execute {cmd} in the shell with [range] lines as standard input

`:[range]!{filter}` Filter the specified [range] through external program {filter} 

## Address

`1` First line of the file

`$` Last line of the file

`0` Virtual line above first line of the file 

`.` Line where the cursor is placed

`'m` Line containing mark m

`'<` Start of visual selection

`'>` End of visual selection

`%` The entire file (shorthand for :1,$)

## Command-Line Window

`q/` Open the command-line window with history of searches

`q:` Open the command-line window with history of Ex commands

`ctrl-f` Switch from Command-Line mode to the command-line window
