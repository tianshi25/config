# shortcut
alias R='rangers'
alias vi=nvim
alias rf='source ~/ts_bash.sh'
alias ef='vi ~/ts_bash.sh'
alias nvim=/home/tianshi/bin/nvim.appimage
alias startJu=/usr/local/bin/jupyter.sh >> /dev/null 

# aosp
function build_aosp() {
pushd ~/code/aosp
    source build/envsetup.sh;
    lunch aosp_x86_64-eng;
    m;
popd
}
function start_aosp() {
pushd ~/code/aosp
    source build/envsetup.sh;
    sudo chmod -R 777 /dev/kvm;
    emulator -no-qt;
popd
}

# enable and disable local proxy 
function proxy_on {
    pushd ~/bin/shadowsocksr/shadowsocks;
        sudo python local.py -c ~/.config/ss/ss.json -d start;
    popd;
    export http_proxy="socks5://127.0.0.1:1080/“;
    export https_proxy="socks5://127.0.0.1:1080/“;
}
function proxy_off {
    unset http_proxy;
    unset https_proxy;
}

# lanugage
export LC_ALL=en_US.UTF-8

# zsh
bindkey -v

# git config version control command
# git root config
alias gtr="git --git-dir=/home/tianshi/config_repo --work-tree=/home/tianshi "
