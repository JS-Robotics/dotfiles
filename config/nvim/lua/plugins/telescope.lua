return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-media-files.nvim'
  },
  config = function()
    require('telescope').load_extension('media_files')
  end,
  keys = {
    { '<leader>pf', ':Telescope find_files<CR>', mode = 'n' },
    { '<C-p>', ':Telescope git_files<CR>', mode = 'n' },
    { '<leader>ps', function()
      require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") })
    end,
    mode = 'n' },
  }
}
