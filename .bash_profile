# [CUSTOM BASH PROFILE]
# @description: This is a personal addition to the original .bashrc environment settings for bash
# @author: Onyr (GitHub: @0nyr)
# @version: 1.2
# @environment: Ubuntu 18.04.4 LTS (should work fine on all Debian based os)

### [USAGE]
# NB: This file is not intended to replace the default bash profile file called .bashrc
# Just add this file as an additional source by typing the following code at the bottom of .bashrc:

#	| # Add additional bash profile
#	|source /home/<replace_with_your_directory_path>/.bash_profile

# NB: To set the background window transparent, open terminal> Edit> Preferences> Color> then tick "Use transparent background" and select the appropriate value

### [GET MORE INFO AND TOOLS]
# Bash/Prompt customization: https://wiki.archlinux.org/index.php/Bash/Prompt_customization
# 256 COLORS - CHEAT SHEET: https://jonasjacek.github.io/colors/
# Bash tips: Colors and formatting: https://misc.flogisoft.com/bash/tip_colors_and_formatting
# Terminal codes (ANSI/VT100) introduction: https://wiki.bash-hackers.org/scripting/terminalcodes
# Unicode UTF-8 symbol picked: https://unicode-table.com/en/sets/star-symbols/
# ASCII text converter: http://www.patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20
# Ubuntu transparent terminal: https://www.how2shout.com/how-to/change-terminal-color-ubuntu-linux-background-text.html 

### [MODIFY THE COMMAND PROMPT (PS1)]
# WARN: Wrapping the tput output in \[ \] is recommended by the Bash man page. This helps Bash ignore non-printable characters so that it correctly calculates the size of the prompt.
# NB: "\[" escape is used to begin a sequence of non-printing characters
# NB: "\]" escape is used to signal the end of such a sequence
# NB: "\e" or "\033" or "\x1b" is shorthand for the Escape character
# WARN: writing in this script BLUE= "any_value" will result in bash to think it is a command because of the space after the = sign, and return an error!

## 256 Color font attributes
# \x1b[38;5;#m foreground, # = 0 - 255
# \x1b[48;5;#m background, # = 0 - 255
## True Color
# \x1b[38;2;r;g;bm r = red, g = green, b = blue foreground
# \x1b[48;2;r;g;bm r = red, g = green, b = blue background
## True Color off 
# off = '\x1b[0m' # off
# default = '\x1b[39m' # default foreground
# DEFAULT = '\x1b[49m' # default background
## Font attributes 
# bd = '\x1b[1m' # bold
# ft = '\x1b[2m' # faint
# st = '\x1b[3m' # standout
# ul = '\x1b[4m' # underlined
# bk = '\x1b[5m' # blink
# rv = '\x1b[7m' # reverse
# hd = '\x1b[8m' # hidden
# nost = '\x1b[23m' # no standout
# noul = '\x1b[24m' # no underlined
# nobk = '\x1b[25m' # no blink
# norv = '\x1b[27m' # no reverse
## Examples
# WARN: possibility to use RGB colors only with echo -e command
# echo -e "\x1b[38;2;50;50;50m Welcome BACK \x1b[39m ${BLUE}"
# echo -e "\x1b[48;2;100;100;100m Hello boiiii \x1b[49m"
## Tools
# 256 color format: https://misc.flogisoft.com/bash/tip_colors_and_formatting
# 256 color picker: https://jonasjacek.github.io/colors/ 

## PS1 variables
COLOR1="\[\e[38;5;203m\]"
COLOR2="\[\e[38;5;69m\]"
NOCOLOR="\[\e[0m\]"
current_user="\\u"
current_machine="\\h"
working_directory="\\W"
pronter="❯ "

export PS1=" ${COLOR1}❮${BLUE}${current_user} ★ ${current_machine}❯ ${COLOR2}❮${working_directory}❯${COLOR1}${pronter}${NOCOLOR}"

# welcome message, generated with: http://www.patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=%20-%20ONYR%20-, using font: ANSI Shadow
# WARN: can't use the \[\] notation with echo -e
echo -e "
\e[38;5;203m           \e[38;5;69m    ██████╗ \e[38;5;203m███╗   ██╗██╗   ██╗██████╗           
\e[38;5;203m           \e[38;5;69m   ██╔═══██╗\e[38;5;203m████╗  ██║╚██╗ ██╔╝██╔══██╗          
\e[38;5;203m    █████╗ \e[38;5;69m   ██║   ██║\e[38;5;203m██╔██╗ ██║ ╚████╔╝ ██████╔╝    █████╗
\e[38;5;203m    ╚════╝ \e[38;5;69m   ██║   ██║\e[38;5;203m██║╚██╗██║  ╚██╔╝  ██╔══██╗    ╚════╝
\e[38;5;203m           \e[38;5;69m   ╚██████╔╝\e[38;5;203m██║ ╚████║   ██║   ██║  ██║          
\e[38;5;203m           \e[38;5;69m    ╚═════╝ \e[38;5;203m╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝          
                                                            \e[0m"


### [ADD ALIAS FILE FOR PERSONAL COMMANDS]
chmod +x "${CUSTOM_BASH_PATH}.bash_aliases" #grant run permission, file containing aliases
source ${CUSTOM_BASH_PATH}.bash_aliases

#test
#alias greet3="~/bin_onyr/greetings_codecademy.sh 3"



# ONYR's MESS

### pgAdmin4
export PATH="/usr/pgadmin4/bin:/home/onyr/.cargo/bin:$PATH"

[ -f "/home/onyr/.ghcup/env" ] && source "/home/onyr/.ghcup/env" # ghcup-env
. "$HOME/.cargo/env"
