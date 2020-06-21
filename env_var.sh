# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tianshi/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tianshi/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tianshi/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tianshi/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# add personal bin
export PATH="$HOME/bin:$PATH"

# add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin:$HOME/bin"

# add android studio env variable
export PATH="$PATH:/home/tianshi/software/android-studio/bin"

# add adnroid tool set 
export PATH=/home/tianshi/bin/platform-tools:$PATH

# add cmake
export PATH=/home/tianshi/bin/cmake-3.17.3-Linux-x86_64/bin:$PATH

# add cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64

# nodejs
VERSION=v12.16.3
DISTRO=linux-x64
export PATH=/home/tianshi/bin/nodejs/node-v12.16.3-linux-x64/bin:$PATH

# config path
export XDG_CONFIG_HOME="$HOME/.config"

# the fuck
eval $(thefuck --alias)
# add home brew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
