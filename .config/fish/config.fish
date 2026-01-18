set fish_greeting ""

if status is-interactive
    oh-my-posh init fish --config ~/.config/fish/poshthemes/robbyrussell.omp.json | source

    alias ls='ls --color=auto'
    alias grep='grep --color=auto'

    alias n='nvim'
    alias ff='fastfetch'
    alias ponysay='env PYTHONWARNINGS=ignore ponysay'
    # alias mars='_JAVA_OPTIONS="-Dswing.defaultlaf=javax.swing.plaf.metal.MetalLookAndFeel" mars-mips nc'
    alias mars='java -Dswing.defaultlaf=javax.swing.plaf.metal.MetalLookAndFeel -jar /usr/share/java/mars-mips/Mars.jar sm nc'
end
