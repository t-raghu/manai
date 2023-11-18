WORK=$HOME/work/ws
CODE=$WORK/code
TOOLS=$WORK/tools
GIT=$CODE/www.github.com
GRAGHU=$GIT/t-raghu
SDK=$TOOLS/sdk
mkdir -pv {$WORK,$CODE,$GIT,$GRAGHU,$SDK}
sudo dnf install git vim zsh curl wget
sudo usermod --shell /usr/bin/zsh raghu
ssh-keygen -t ed25519 -a 100

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# it installs to the home dir
# move to .config/oh=my=zsh
mkdir .config
cd .config
mv .oh-my-zsh oh-my-zsh
ZSH_CUSTOM=$HOME/.config/oh-my-zsh/custom

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
