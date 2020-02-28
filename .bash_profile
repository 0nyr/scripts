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

## PS1 variables
COLOR1="\[\e[38;5;203m\]"
COLOR2="\[\e[38;5;69m\]"
NOCOLOR="\[\e[0m\]"
current_user="\\u"
current_machine="\\h"
working_directory="\\W"
pronter="❯ "

export PS1=" ${COLOR1}❮ ${BLUE}${current_user} ★  ${current_machine}❯ ${COLOR2}❮ ${working_directory}❯${COLOR1}${pronter}${NOCOLOR}"

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
chmod +x /home/onyr/bin_onyr/bash_aliases_onyr.sh #grant run permission, file containing aliases
source /home/onyr/bin_onyr/bash_aliases_onyr.sh
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:~/bin_onyr"

#test
#alias greet3="~/bin_onyr/greetings_codecademy.sh 3"
