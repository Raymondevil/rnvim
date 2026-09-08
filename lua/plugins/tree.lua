local trees = require("nvim-treesitter")
local registry = require("treesitter-registry")
registry.load(vim.fn.stdpath("cache"), {}, function(reg, err)
  if err then return vim.notify(err, vim.log.levels.ERROR) end
  local python = reg.python
  -- python.source.parser_url, python.source.queries_url, etc.
end)
trees.setup {
  -- parsers and queries are installed here (prepended to runtimepath)
  install_dir = vim.fn.stdpath('data') .. '/site',
}
trees.install {
        "lua",
        "luadoc",
        "vim",
        "vimdoc",
        "query",
        -- Shell / config
        "bash",
        "json",
        "jsonc",
        "yaml",
        "toml",
        -- Web
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "svelte",
        -- Docs
        "markdown",
        "markdown_inline",
        "regex",
        -- Languages Dreams of Code uses in videos
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "templ",
        "rust",
        "python",
        "c",
        "cpp",
      }

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'rust', 'python', 'typescript' },
  callback = function()
    vim.treesitter.start()                                    -- highlighting
    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'     -- folds
    vim.wo.foldmethod = 'expr'
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
  end,
})

