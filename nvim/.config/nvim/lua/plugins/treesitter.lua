return {
  "nvim-treesitter/nvim-treesitter",
  build = ':TSUpdate', --This line insures that wherever the nvim-treesitter plugin updates we run treesitter update to allow any new parsers/queries to exist.
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "lua", "typescript", "javascript", "tsx", "toml", "sql", "jsdoc", "go", "gitignore", "dockerfile" },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      },
    }
  end
}
