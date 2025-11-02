set fish_greeting ""

if status is-interactive
    oh-my-posh init fish --config ~/.config/fish/poshthemes/takuya.omp.json | source

    alias ls='ls --color=auto'
    alias grep='grep --color=auto'

    alias n='nvim'
    alias ff='fastfetch'
    alias ponysay='env PYTHONWARNINGS=ignore ponysay'
end
