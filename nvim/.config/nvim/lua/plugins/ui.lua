return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha',
        transparent_background = true,
        integrations = {
          cmp = true,
          gitsigns = true,
          treesitter = true,
          mason = true,
          telescope = {
            enabled = true,
          },
          mini = {
            enabled = true,
            indentscope_color = '',
          },
        },
      }
      vim.cmd 'colorscheme catppuccin'
    end,
  },
  {
    'lukas-reineke/virt-column.nvim',
    opts = {
      char = { '┆' },
      virtcolumn = '80',
      highlight = { 'NonText' },
    },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = function()
      return {
        indent = {
          char = '│',
          tab_char = '│',
        },
        scope = { show_start = false, show_end = false },
        exclude = {
          filetypes = {
            'help',
            'alpha',
            'dashboard',
            'neo-tree',
            'Trouble',
            'trouble',
            'lazy',
            'mason',
            'notify',
            'toggleterm',
            'lazyterm',
          },
        },
      }
    end,
  },
  {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
      require('mini.statusline').setup()
      require('mini.surround').setup()
    end,
  },
}
