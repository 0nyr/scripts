# terminal apps
APP_PATH="${CUSTOM_BASH_PATH}app/"
chmod +x "${APP_PATH}/app_aliases.sh" #grant run permission, file containing aliases
source "${APP_PATH}/app_aliases.sh"

# scripts
CUSTOM_SCRIPTS_PATH="${CUSTOM_BASH_PATH}scripts/"
chmod +x "${CUSTOM_SCRIPTS_PATH}/scripts_aliases.sh" #grant run permission, file containing aliases
source "${CUSTOM_SCRIPTS_PATH}/scripts_aliases.sh"


# installed softwares
# Check if not on NixOS
if [[ ! -e /etc/NIXOS ]]; then
  # installed softwares (for non-NixOS)
  alias kitty='/home/onyr/.local/kitty.app/bin/kitty'
  alias kitten='/home/onyr/.local/kitty.app/bin/kitten'
fi

# scripts & installed softwares (for NixOS)

# VSCode
# NOTE: use $ ls /nix/store | grep vscode to find the right directory
# the executable will be in /nix/store/<hash>-vscode-<version>/bin/code
#alias code="/nix/store/1lqh595004maiapcx72wkp65r1nbnh9n-vscode-1.84.2/bin/code"
#alias code-fhs='/path/to/fhs/vscode'

