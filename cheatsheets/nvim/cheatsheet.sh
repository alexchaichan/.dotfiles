# Movement

    k
  h   l         basic motion
    j

w               next start of word
W               next start of whitespace-delimited word
e               next end of word
E               next end of whitespace-delimited word
b               previous start of word
B               previous start of whitespace-delimited word
0               start of line
$               end of line
gg              go to first line in file
G               go to end of file
gk		move down one displayed line
gj		move up one displayed line

# Insertion
#   Enter insertion mode and:

a               append after the cursor
A               append at the end of the line
i               insert before the cursor
I               insert at the beginning of the line
o               create a new line under the cursor
O               create a new line above the cursor
R               enter insert mode but replace instead of inserting chars
:r {file}       insert from file

# Editing

u               undo
yy              yank (copy) a line
y{motion}       yank text that {motion} moves over
p               paste after cursor
P               paste before cursor
<Del> or x      delete a character
dd              delete a line
d{motion}       delete text that {motion} moves over

# Search and replace with the `:substitute` (aka `:s`) command

:s/foo/bar/	replace the first match of 'foo' with 'bar' on the current line only
:s/foo/bar/g	replace all matches (`g` flag) of 'foo' with 'bar' on the current line only
:%s/foo/bar/g	replace all matches of 'foo' with 'bar' in the entire file (`:%s`)
:%s/foo/bar/gc	ask to manually confirm (`c` flag) each replacement
:5,12s/foo/bar/g	Change each 'foo' to 'bar' for all lines from line 5 to line 12 (inclusive).

# Preceding a motion or edition with a number repeats it 'n' times
# Examples:
50k         moves 50 lines up
2dw         deletes 2 words
5yy         copies 5 lines
42G         go to line 42

# Text Objects "" | '' | () | [] | {}

ci           change inside
ca           change around
cit          change inside a tag(Example an html)
cat          change around a tag

di           delete inside
da           delete around
dit          delete inside a tag(Example an html)
dat          delete around a tag

# Cases

~            Toggle case of the character under the cursor, or all visually-selected characters.
3~           Toggle case of the next three characters.
g~3w         Toggle case of the next three words.
g~iw         Toggle case of the current word (inner word – cursor anywhere in word).
g~$          Toggle case of all characters to end of line.
g~~          Toggle case of the current line (same as V~).

The above uses ~ to toggle case. In each example, you can replace ~ with u to convert to lowercase, or with U to convert to uppercase. For example:

U           Uppercase the visually-selected text. First press v or V then move to select text. If you dont select text, pressing U will undo all changes to the current line.
gUU         Change the current line to uppercase (same as VU).
gUiw        Change current word to uppercase.
u           Lowercase the visually-selected text. If you dont select text, pressing u will undo the last change.
guu         Change the current line to lowercase (same as Vu).
