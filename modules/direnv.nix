{
  programs.direnv = {
    enable = true;
    enableFishIntegration = true;
    nix-direnv.enable = true;
    settings = {
      global = {
        hide_env_diff = true;
      };
    };
  };

  environment.sessionVariables = {
    NIX_REMOTE = "daemon";
  };
}
