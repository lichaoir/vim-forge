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

`:terminal` Open terminal in neovim

`<c-\><c-n>` Exit Terminal mode

`:!{cmd}` Execute {cmd} with the shell

`:read !{cmd}` Execute {cmd} in the shell and insert its standard output below the cursor

`:[range]write !{cmd}` Execute {cmd} in the shell with [range] lines as standard input

`:[range]!{filter}` Filter the specified [range] through external program {filter} 

## Addresses

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

# Files

## Buffers

`:ls` List buffers

`:bnext` / `:bprevious` / `:bfirst` / `:blast` Next buffer / Previous buffer / First buffer / Last buffer

`[N, M] :bdelete [N1, N2, N3, ...]` Delete buffers

`:buffer {bufname | N}` Go to buffer

`<c-^>` Toggle between current buffer (%) and alternate buffer (#)

`edit!` Revert changes

`qall` Quit all windows

`wall` Write all modified buffers to disk

### Hidden Setting

Check `:help 'hidden'`

## Argument List

`:args {arglist}` Populate the argument list

`:args` Show the argument list

`:next` `:prev` Traverse files in the argument list

`:argdo {cmd}` Execute {cmd} for each file in the argument list

### Backtick Expansion

``:args `{shell command}` `` Execute {shell command} and use the output as the argument to `:args` command

## Wildcards

Check `:help wildcard`

## Split Windows

`<c-w>s` Split horizontally

`<c-w>v` Split vertically

`:sp[lit] {file}` Split the current window horizontally, loading {file} into the new window

`:vsp[lit] {file}` Split the current window vertically, loading {file} into the new window

`<c-w>w` `<c-w><c-w>` Cycle between windows

`<c-w>h` / `<c-w>l` / `<c-w>j` / `<c-w>k` Focus the window to the left / to the right / below / above

`close` `<c-w>c` Close the active window

`only` `<c-w>o` Keep only the active window, closing all others

`<c-w>=` Equalize width and height of all windows

`<c-w>_` Maximize height of the active window

`<c-w>|` Maximize width of the active window

`[N]<c-w>_` Set active window height to [N] rows

`[N]<c-w>|` Set active window width to [N] columns

`:lcd` Set the current directory for the current window

`'winfixheight' 'wfh'` Keep the window height when windows are opened or closed

`'winfixwidth' 'wfw'` Keep the window width when windows are opened or closed

## Tabs

`windo {cmd}`	Execute {cmd} in each window in the current tab page

`:tabe[dit] {filename}` Open {filename} in a new tab

`<c-w>T` Move the current window into its own tab

`tabc[lose]` Close the current tab page and all of its windows

`:tabo[nly]` Keep the active tab page, closing all others

`:tabn[ext] {N}` `{N}gt` Switch to tab page number {N}

`:tabn[ext]` `gt` Switch to the next tab page

`:tabp[revious]` `gT` Switch to the previous tab page

`:tabmove [N]` Rearrange tab
