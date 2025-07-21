return {
  "kdheepak/lazygit.nvim",
  keys = {
    {
      ";g",
      ":LazyGit<Return>",
      silent = true,
      noremap = true,
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
