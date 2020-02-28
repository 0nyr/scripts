#  🌟 custom_bash  🌟
A custom visually appealing bash terminal

# 🚀 The concept
Because messing up with config file can be tricky and dangerous, the idea here is to add a .bash_profile config file for bash as an extention for the original .bashrc which is almost not modified. Hence you can feel free to experiment as much as possible in the .bash_profile file with the ability to remove everything if any problem occur.
NB: Of course, you can still edit directly the .bashrc config file.

# ⚒ Get more info and tools to edit your own config file
Bash/Prompt customization: https://wiki.archlinux.org/index.php/Bash/Prompt_customization

256 COLORS - CHEAT SHEET: https://jonasjacek.github.io/colors/

Bash tips: Colors and formatting: https://misc.flogisoft.com/bash/tip_colors_and_formatting

Terminal codes (ANSI/VT100) introduction: https://wiki.bash-hackers.org/scripting/terminalcodes

Unicode UTF-8 symbol picked: https://unicode-table.com/en/sets/star-symbols/

ASCII text converter: http://www.patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20

Ubuntu transparent terminal: https://www.how2shout.com/how-to/change-terminal-color-ubuntu-linux-background-text.html 


# 🍪 Modify the command prompt (PS1)
▶: Wrapping the tput output in \[ \] is recommended by the Bash man page. This helps Bash ignore non-printable characters so that it correctly calculates the size of the prompt.

▶: "\[" escape is used to begin a sequence of non-printing characters

▶: "\]" escape is used to signal the end of such a sequence

▶: "\e" or "\033" or "\x1b" is shorthand for the Escape character

▶: writing in this script BLUE= "any_value" will result in bash to think it is a command because of the space after the = sign, and return an error!


## 256 Color font attributes
\x1b[38;5;#m foreground, # = 0 - 255

\x1b[48;5;#m background, # = 0 - 255

## True Color
▶: Only works with "echo -e" command, not inside the PS1 variable!

\x1b[38;2;r;g;bm r = red, g = green, b = blue foreground

\x1b[48;2;r;g;bm r = red, g = green, b = blue background

## True Color off 
▶: Only works with "echo -e" command, not inside the PS1 variable!

off = '\x1b[0m' # off

default = '\x1b[39m' # default foreground

DEFAULT = '\x1b[49m' # default background

## Font attributes 
▶: Only works with "echo -e" command, not inside the PS1 variable!

bd = '\x1b[1m' # bold

ft = '\x1b[2m' # faint

st = '\x1b[3m' # standout

ul = '\x1b[4m' # underlined

bk = '\x1b[5m' # blink

rv = '\x1b[7m' # reverse

hd = '\x1b[8m' # hidden

nost = '\x1b[23m' # no standout

noul = '\x1b[24m' # no underlined

nobk = '\x1b[25m' # no blink

norv = '\x1b[27m' # no reverse

## Examples
▶: possibility to use RGB colors only with echo -e command

▶: Inside PS1, rather use the 256 colors available, use Tool> 256 color picker and Tool> 256 color format to help you.

echo -e "\x1b[38;2;50;50;50m Welcome BACK \x1b[39m ${BLUE}"

echo -e "\x1b[48;2;100;100;100m Hello boiiii \x1b[49m"

## Tools
256 color format: https://misc.flogisoft.com/bash/tip_colors_and_formatting

256 color picker: https://jonasjacek.github.io/colors/ 

