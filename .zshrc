source ~/powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Export PATH & ENV
export PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/cervant/scripts:/home/cervant/.local/bin:/home/cervant/go/bin:/opt/john/run

# gdb-pwndbg
export LC_ALL=en_US.UTF-8
export PYTHONIOENCODING=UTF-8


# Alias
alias ls="/usr/bin/lsd"
alias cat="/usr/bin/bat"
alias catn="/usr/bin/cat"
alias vim="/usr/bin/nvim"

# Binds
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
bindkey "^[[1;3D" backward-word



