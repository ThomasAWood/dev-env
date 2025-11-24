-- Editor enhancements & visual improvements

return {
  { -- Collection of various small independent plugins/modules
    -- https://github.com/echasnovski/mini.nvim
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },

  { -- Detect tabstop and shiftwidth automatically
    -- https://github.com/NMAC427/guess-indent.nvim
    'NMAC427/guess-indent.nvim',
    opts = {},
  },

  { -- Add indentation guides even on blank lines
    -- https://github.com/lukas-reineke/indent-blankline.nvim
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },

  { -- Colorscheme
    -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- https://github.com/folke/tokyonight.nvim
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },

  { -- Highlight todo, notes, etc in comments
    -- https://github.com/folke/todo-comments.nvim
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    'numToStr/Comment.nvim',
  },
  {
    'mikavilpas/yazi.nvim',
    version = '*', -- use the latest stable version
    event = 'VeryLazy',
    dependencies = {
      { 'nvim-lua/plenary.nvim', lazy = true },
    },
    keys = {
      -- 👇 in this section, choose your own keymappings!
      {
        '<leader>ec',
        mode = { 'n', 'v' },
        '<cmd>Yazi<cr>',
        desc = 'Yazi [C]urrent File',
      },
      {
        -- Open in the current working directory
        '<leader>e',
        '<cmd>Yazi cwd<cr>',
        desc = 'Yazi Project Root',
      },
      {
        '<leader>y',
        '<cmd>Yazi toggle<cr>',
        desc = 'Toggle [Y]azi',
      },
    },
    opts = {
      -- if you want to open yazi instead of netrw, see below for more info
      open_for_directories = false,
      keymaps = {
        show_help = '<f1>',
      },
    },
    -- 👇 if you use `open_for_directories=true`, this is recommended
    init = function()
      -- mark netrw as loaded so it's not loaded at all.
      --
      -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
      vim.g.loaded_netrwPlugin = 1
    end,
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup {}

      -- Telescope integration
      local conf = require('telescope.config').values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require('telescope.pickers')
          .new({}, {
            prompt_title = 'Harpoon',
            finder = require('telescope.finders').new_table {
              results = file_paths,
            },
            previewer = conf.file_previewer {},
            sorter = conf.generic_sorter {},
          })
          :find()
      end

      vim.keymap.set('n', '<leader>E', function()
        toggle_telescope(harpoon:list())
      end, { desc = 'Open Harpoon' })

      vim.keymap.set('n', '<leader>ah', function()
        harpoon:list():add()
      end, { desc = 'Add to [H]arpoon' })

      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end, { desc = 'Harpoon [1]' })
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end, { desc = 'Harpoon [2]' })
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end, { desc = 'Harpoon [3]' })
      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end, { desc = 'Harpoon [4]' })
    end,
  },
}
