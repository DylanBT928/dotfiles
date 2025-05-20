set -g fish_greeting
set PATH $PATH /Users/dylantran/.local/bin

if status is-interactive
    clear

    set term_width (tput cols)
    set image_width 40
    set image_height 20
    set place_x (math --scale=0 "($term_width - $image_width) / 2")

    # Show centered image at top
    kitty +kitten icat --place "$image_width"x"$image_height"@"$place_x"x1 ~/.config/fish/butterfly.jpg

    # Message to display
    set msg "one day i am gonna grow wings"
    set msg_len (string length -- $msg)
    set msg_pad (math --scale=0 "($term_width - $msg_len) / 2")

    # Move cursor to row just under image (row 21) and column = msg_pad
    tput cup 12 $msg_pad
    echo (set_color magenta)$msg(set_color normal)

    # Move down 2 lines for prompt spacing
    echo ""
    echo ""

    # Oh My Posh
    oh-my-posh init fish --config ~/.config/fish/poshthemes/takuya.omp.json | source
end

