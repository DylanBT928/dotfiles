{
  programs.zathura = {
    enable = true;
    options = {
      selection-clipboard = "clipboard";
      default-bg = "rgba(0, 0, 0, 0.8)";
      recolor-lightcolor = "rgba(0, 0, 0, 0)";
      recolor-darkcolor = "rgba(255, 255, 255, 1)";
      adjust-open = "best";
      recolor = true;
    };
    mappings = {
      i = "recolor";
    };
  };
}
