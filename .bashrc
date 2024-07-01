### [NON-DEFAULT BASH PROFILE .bashrc LINKED WITH ADDITIONAL BASH PROFILE .bash_profile]
#
# This 0nyr's custom bashrc file
#
# Initial setup:
#   Erase (backup) original .bashrc. Then, use a symlink to this file as a replacement.
#       0. mv ~/.bashrc ~/.bashrc.bak
#       1. ln -s /home/onyr/scripts/.bashrc ~/.bashrc

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/onyr/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/onyr/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/onyr/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/onyr/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

### CUDA
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

### Nix
#export NIX_PATH=nixpkgs=/home/onyr/.nix-defexpr/channels/nixpkgs
# Check if not on NixOS
if [[ ! -e /etc/NIXOS ]]; then
    # check if Nix is installed
    if [ -e "$HOME/.nix-defexpr/channels/nixpkgs" ]; then
        export NIX_PATH=nixpkgs=/home/onyr/.nix-defexpr/channels/nixpkgs
    fi
fi

### direnv
eval "$(direnv hook bash)"

### VSCode
#[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path bash)"

### [link Onyr personal bash configuration file]
CUSTOM_BASH_PATH="/home/onyr/scripts/"
source ${CUSTOM_BASH_PATH}.bash_profile