return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      -- Disable netrw (Neovim's built-in file explorer)
      disable_netrw = true,
      hijack_netrw = true,
      -- Window/view settings
      view = {
        width = 30,
        side = 'left',
      },
      -- Renderer settings (how files look)
      renderer = {
        group_empty = true,
        highlight_git = true,
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
            folder_arrow = true,
          },
        },
      },
      -- File filtering
      filters = {
        dotfiles = false, -- Show hidden files
        custom = { '.git' }, -- Hide .git folder
      },
      -- Git integration
      git = {
        enable = true,
        ignore = false,
      },
    }
  end,
}
