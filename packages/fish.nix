{
  pkgs,
  ...
}:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting ""
      set --universal pure_enable_nixdevshell true
      set --universal pure_symbol_nixdevshell_prefix " "
      set --universal pure_show_subsecond_command_duration true
    '';
    shellAliases = {
      ls = "ls --color=auto";
      grep = "grep --color=auto";
      ns = "nh os switch -H";
      n = "nvim";
      ff = "fastfetch";
    };
  };

  environment.systemPackages = with pkgs; [
    fishPlugins.pure
  ];

  environment.variables.EDITOR = "nvim";
}
