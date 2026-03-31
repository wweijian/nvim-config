# VIM CHEATSHEET

## Cursor Movement
w                       start of word
e                       End of word
b                       Back start of word
W                       start of Word with punctuation
E                       End of word with punctuation
B                       Back of word with punctuation

### g movement
gg                      jump to first line of document  
G                       jump to last line of document
5gg                     jump to line 5
5G                      jump to line 5

ge                      jump backwards to end of word
gE                      jump backwards to end of word with punctuation
gd                      move to local declaration
gD                      move to global declaration

### t movement
fx                      jump to next occurence of character x
Fx                      jump to previous occurence of character x
tx                      jump to before next occurence of character x
Tx                      jump to previous occurence of character x
;                       repeat previous f/t movement
,                       repeat previous f/t movement backward

### paragraph movement
}                       jump to next paragraph or function block                            
{                       jump to previous paragraph or function block
%                       move cursor to matching character
0                       jump to start of line
^                       jump to first non-blank
$                       jump to end of line character

### z movement
zb                      position cursor at bottom of screen
zt                      position cursor at top of screen
zz                      center cursor on screen
ctrl + e                move screen down one line
ctrl + y                move screen up one line
ctrl + b                move screen up by one page (cursor to last line)
ctrl + f                move screen down one page (cursor to first line)
ctrl + d                move cursor and screen down 1/2 page
ctrl + u                move cursor and screen up 1/2 page

## Insert Mode
i                       enter Insert mode
I                       enter Insert mode at the beginning of the line
a                       Append mode after the cursor
A                       Append mode at the end of the line
o                       Insert below the cursor
O                       Insert above the cursor
Ctrl + h                delete backward one character in insert mode
Ctrl + w                delete word before the cursor in insert mode
Ctrl + t                indent (move right) one shiftwidth in insert mode
Ctrl + d                dedent (move left) one shiftwidth in insert mode
Ctrl + r'x'             insert the contents of register x in insert mode
Ctrl + o'x'             temporarily switch to insert mode for one command

## Editing
r                       Replace a single character
R                       Enter Replace mode
J                       Join line below to the current one with space
gJ                      Join line to the current one without space
g~                      switch case up to motion
gu                      change to lowercase up to motion
gU                      change to uppercase up to motion
cc                      Change (replace) the entire line
c$ | C                  Change to the end of the ilne
ciw                     Change the entire word
cw | ce                 Change to the end of the word 
u                       undo
U                       Undo last changed line
ctrl + r                redo
.                       repeat last command

## Visual mode
v                       start visual mode
V                       linewise visual mode
ctrl + v                visual block mode

o                       move to the other end of marked area

aw                      mark a word
ab                      mark a block with ()
aB                      mark a block with {}
at                      mark a block with <>
ib                      inner block with ()
iB                      inner block with P{
it                      inner block with <>

## Visual Commands
'>'                     shift text right
'<'                     shift text left
y                       Yank marked text
d                       Delete marked text
~                       switch case

## Registers
:reg[isters]            show registers content
"xy                     yank into register x
"xp                     paste contents of register x
"+y                     yank into system clipboard register
"+p                     paste from system clipboard register

### Special registers
0                       last yank
"                       unnamed register, last delete or yank
%                       current file name
#                       alternate file name
*                       clipboard contents (X11 primary)
+                       clipboard contents (X11 clipboard)
/                       last search pattern
:                       last command-line
.                       last inserted text
-                       last small (less than a line) delete
=                       expression register
_                       black hole register

## Marks and Positions
:marks                  list of marks
m'a'                    set current position for mark A (as in any char)
`'a'                    jump to position of mark A
y`'a'                   yank text to position of mark A

:jumps                  list of jumps
ctrl + i                go to newer position in jump list
ctrl + o                go to older position in jump list

:changes
g,                      go to newer postion in jump list
g;                      go to older postion in jump list
ctrl + ]                jump to the tag under cursor

## Macros
q'a'                    record macro 'a'
q                       stop recording macro
@'a'                    run macro a
@@                      run last macro

## Cut and Paste
yw                      yank word from cursor to start of next word
yiw                     yank word under the cursor
yaw                     yank word under the cursor and the space after it
y$ or Y                 yank to end of the line

p                       paste the clipboard after the cursor
P                       paste before the cursor
gp                      paste clipboard after curosr and leave after

dd                      delete a line
2dd                     delete 2 line
dw                      delete the characters of the word from cursor
                        to start of next word
diw                     delete word under the cursor
daw                     delete word under the cursor and space after it
:3,5d                   delete lines from line 3 to 5

:g/{pattern}/d          delete all lines containing pattern
:g!/{pattern}/d         delete all lines not containing pattern
d$ or D                 delete till the end of the line
x                       delete a single character

## Indent Text
>>                      indent (move right) line one shift width
<<                      de-indent line one shiftwidth
>%                      indent a block with () or {}
<%                      indent a block with () or {}
>ib                     indent inner block with ()
>at                     indent a block with <> tags
3==                     re-indent 3 lines
=%                      re-indent a block with () or {}
=ib                     re-indent a block with <> tags
gg=G                    re-indent entire bbuffer
]p                      oaste and adjust indent to current line

## Search and Replace

/pattern                search for pattern
?attern                 search backwards for pattern
\vpattern               'very magic'pattern (regex)
n                       repeat search in same direct
N                       repeat search in same direct
:%s/old/new/g           replace old with new throughout file
:%s/old/new/gc          replace all old with new throughout file with
                        confirmations
:noh[lsearch]           remove highlighting of search matches

## Working with multiple files
:e                      edit a file in buffer
:ls or :buffers         list all open buffers

## Navigation — Harpoon
Space + a               Add file to harpoon list
Ctrl + h                Toggle harpoon quick menu
Ctrl + 1                Jump to harpoon slot 1
Ctrl + 2                Jump to harpoon slot 2
Ctrl + 3                Jump to harpoon slot 3
Ctrl + 4                Jump to harpoon slot 4

## Search — Telescope
Space + ff              Find files
Space + fg              Live grep (search text)
Space + fb              Buffers
Space + fh              Help tags

## LSP
Space + rn              Rename symbol
Space + td              Toggle diagnostics

## Formatting & Linting
Space + tf              Format buffer
Space + tl              Toggle linting

## Editing
Alt + j                 Move line up
Alt + k                 Move line down
Alt + Up                Move line up
Alt + Down              Move line down

## General
Space + ?               Show buffer-local keymaps (which-key)
Esc                     Clear search highlight


