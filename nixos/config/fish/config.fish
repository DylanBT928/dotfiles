set fish_greeting ""

set -gx EDITOR nvim

if status is-interactive
    oh-my-posh init fish --config "/etc/nixos/config/fish/robbyrussell.omp.json" | source

    alias ls='ls --color=auto'
    alias grep='grep --color=auto'

    alias n='nvim'
    alias nrs='sudo nixos-rebuild switch'
    alias ff='fastfetch'

end
