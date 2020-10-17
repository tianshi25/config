# shortcut
alias R='ranger'
alias vi=nvim
alias rf='source ~/ts_bash.sh'
alias ef='vi ~/ts_bash.sh'
alias nvim=/home/tianshi/bin/nvim.appimage
alias vim=nvim
alias startJu=/usr/local/bin/jupyter.sh >> /dev/null 

# aosp
function build_aosp() {
pushd ~/code/aosp
    source build/envsetup.sh;
    lunch master-eng;
    m;
popd
}
function start_aosp() {
pushd ~/code/aosp
    source build/envsetup.sh;
    sudo chmod -R 777 /dev/kvm;
    emulator -no-window;
popd
}
export PATH=$PATH:/home/tianshi/code/aosp/out/soong/host/linux-x86/bin/

# enable and disable local proxy 
function proxy_on {
    pushd ~/bin/shadowsocksr/shadowsocks;
        sudo python local.py -c ~/.config/ss/ss.json -d start;
    popd;
    export http_proxy="socks5://127.0.0.1:1080/";
    export https_proxy="socks5://127.0.0.1:1080/";
}
function proxy_off {
    unset http_proxy;
    unset https_proxy;
}

# lanugage
export LC_ALL=en_US.UTF-8

# zsh
bindkey -v
# common alias
alias rp=realpath

# virualenv
export WORKON_HOME=~/PipEnv
source /home/tianshi/miniconda3/bin/virtualenvwrapper.sh > /dev/null

# git config version control command
# git root config
alias gtr="git --git-dir=/home/tianshi/config_repo --work-tree=/home/tianshi "

# convert path
function get_mac_path {
	LOCAL_PATH=$(realpath $1)
	MAC_PATH=$(echo $LOCAL_PATH | sed 's/^/\/Users\/tianshiliu\/ubuntu/')
  echo $MAC_PATH
}
alias MP=get_mac_path

# go path
export GOPATH=/home/tianshi/go
