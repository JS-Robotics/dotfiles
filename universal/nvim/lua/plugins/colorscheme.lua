return {

  {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  -- One of the "excetpions" to using config for a plugin is to load the colorscheme.
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
  }

}
