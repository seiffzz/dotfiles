return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function(buffer)
        local gitsigns = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

        map('n', '<leader>ghn', function()
          if vim.wo.diff then
            vim.cmd.normal { '<leader>ghn', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, 'Go to [N]ext [H]unk')

        map('n', '<leader>ghp', function()
          if vim.wo.diff then
            vim.cmd.normal { '<leader>ghp', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, 'Go to [P]revious [H]unk')

        map('n', '<leader>ghr', gitsigns.reset_hunk, '[R]eset [H]unk')
        map('n', '<leader>ghs', gitsigns.preview_hunk_inline, '[S]how [H]unk inline')
      end,
    },
  },
  { 'tpope/vim-fugitive' },
}
