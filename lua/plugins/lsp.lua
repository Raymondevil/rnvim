-- Add blink.cmp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lsp_defaults = require('lspconfig').util.default_config
--local filetypes = require(".local.share.nvim.site.pack.core.opt.nvim-web-devicons.lua.nvim-web-devicons.filetypes")
lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force', lsp_defaults.capabilities, require('blink.cmp').get_lsp_capabilities()
)
local capabilities = vim.lsp.protocol.make_client_capabilities()
if capabilities.workspace then
  capabilities.workspace.didChangeWatchedFiles = nil
end
vim.lsp.config("*", { capabilities = lsp_defaults })
vim.lsp.config('*', {
  capabilities = capabilities
})
vim.lsp.config['emmylua_ls'] = {
  cmd = { 'emmylua_ls' },
  filetypes = { 'lua' },
  -- Sets the workspace "root" to the directory where any of these files is found.
  -- Files sharing a root will reuse the LSP client/connection.
  -- Nested lists indicate equal priority, see |vim.lsp.Config|.
  root_markers = { { '.emmyrc.json', '.luarc.json' }, '.git' },
  -- Server-specific settings. https://github.com/EmmyLuaLs/emmylua-analyzer-rust/blob/main/docs/config/emmyrc_json_EN.md
  settings = {
    runtime = {
      version = 'LuaJIT'
    }
  }
}
-- ~/.config/nvim/init.lua or a separate Lua config file
vim.lsp.config('ts_ls', {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'javascript', 'typescript' },
  root_dir = vim.fs.dirname(vim.fs.find({ 'tsconfig.json', 'package.json' }, { upward = true })[1]),
  settings = {}
})

vim.lsp.enable('ts_ls')
vim.lsp.enable('emmylua_ls')
vim.lsp.enable('bashls')
--
-- vim.api.nvim_create_autocmd('LspAttach', {
--      group = vim.api.nvim_create_augroup('my.lsp', {}),
--      callback = function(ev)
--        local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
--        if client:supports_method('textDocument/implementation') then
-- vim.keymap.set({ "n", "v" }, "<leader>la", vim.lsp.buf.implementation, { desc = "[L]SP code [a]ction" })
--          -- Create a keymap for vim.lsp.buf.implementation ...
--        end
--
--        -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
--        if client:supports_method('textDocument/completion') then
--          -- Optional: trigger autocompletion on EVERY keypress. May be slow!
--          -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
--          -- client.server_capabilities.completionProvider.triggerCharacters = chars
--
--          vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
--        end
--
--        -- Auto-format ("lint") on save.
--        -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
--        if not client:supports_method('textDocument/willSaveWaitUntil')
--            and client:supports_method('textDocument/formatting') then
--          vim.api.nvim_create_autocmd('BufWritePre', {
--            group = vim.api.nvim_create_augroup('my.lsp', {clear=false}),
--            buffer = ev.buf,
--            callback = function()
--              vim.lsp.buf.format({ bufnr = ev.buf, id = client.id, timeout_ms = 1000 })
--            end,
--          })
--        end
--      end,
--    })
