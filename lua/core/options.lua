-- vim.o.wrap = true
vim.g.mapleader = ',' -- Use `<Space>` as a leader key

vim.o.mouse = 'a'     -- Enable mouse
vim.o.undofile = true -- Enable persistent undo

vim.o.shada = "'100,<50,s10,:1000,/100,@100,h" -- Limit ShaDa file (for startup)

-- UI =========================================================================
vim.o.breakindent = true         -- Indent wrapped lines to match line start
vim.o.breakindentopt = 'list:-1' -- Add padding for lists (if 'wrap' is set)
vim.o.colorcolumn = '+1'         -- Draw column on the right of maximum width
vim.o.background = "light"
vim.o.clipboard = "unnamedplus"
vim.o.cursorline = false        -- Enable current line highlighting
vim.o.linebreak = true          -- Wrap lines at 'breakat' (if 'wrap' is set)
vim.o.list = true               -- Show helpful text indicators
vim.o.number = false            -- Show line numbers
vim.o.pumheight = 10            -- Make popup menu smaller
vim.o.ruler = true              -- Don't show cursor coordinates
-- vim.o.shortmess      = 'CFOSWaco' -- Disable some built-in completion messages
vim.o.showmode = true      -- Don't show mode in command line
vim.o.signcolumn = 'yes'   -- Always show signcolumn (less flicker)
vim.o.splitbelow = true    -- Horizontal splits will be below
vim.o.splitkeep = 'screen' -- Reduce scroll during window split
vim.o.splitright = true    -- Vertical splits will be to the right
vim.o.wrap = true          -- Don't visually wrap lines (toggle with \w)

vim.o.cursorlineopt = 'screenline,number' -- Show cursor line per screen line

-- Special UI symbols
vim.o.fillchars = 'eob: ,fold:╌'
vim.o.listchars = 'extends:…,nbsp:␣,precedes:…,tab:> '

-- Folds (default behavior; see `:h Folding`)
vim.o.foldlevel = 1         -- Fold everything except top level
vim.o.foldmethod = 'marker' -- Fold based on indent level
vim.o.foldnestmax = 10      -- Limit number of fold levels

vim.o.termguicolors = true

-- vim.o.winborder = 'bold' -- Use border in floating windows

-- vim.o.pummaxwidth = 100 -- Limit maximum width of popup menu
-- vim.o.completetimeout = 100

-- vim.o.pumborder = 'bold' -- Use border in built-in completion menu

-- vim.o.updatetime = 200 -- Ensure fast `current_line` diagnostic renders

-- Editing ====================================================================
vim.o.autoindent = true        -- Use auto indent
vim.o.expandtab = true         -- Convert tabs to spaces
vim.o.formatoptions = 'rqnl1j' -- Improve comment editing
vim.o.ignorecase = true        -- Ignore case during search
vim.o.incsearch = true         -- Show search matches while typing
-- vim.o.infercase     = true       -- Infer case in built-in completion
vim.o.shiftwidth = 2         -- Use this number of spaces for indentation
vim.o.smartcase = true       -- Respect case if search pattern has upper case
vim.o.smartindent = true     -- Make indenting smart
vim.o.spelloptions = 'camel' -- Treat camelCase word parts as separate words
vim.o.tabstop = 2            -- Show tab as this number of spaces
vim.o.virtualedit = 'block'  -- Allow going past end of line in blockwise mode

-- vim.o.iskeyword = '@,48-57,_,192-255,-' -- Treat dash as `word` textobject part
-- vim.o.dictionary = vim.fn.stdpath('config') .. '/misc/dict/english.txt' -- Use specific dictionaries

-- Pattern for a start of 'numbered' list (used in `gw`). This reads as
-- "Start of list item is: at least one special character (digit, -, +, *)
-- possibly followed by punctuation (. or `)`) followed by at least one space".
vim.o.formatlistpat = [[^\s*[0-9\-\+\*]\+[\.\)]*\s\+]]
vim.o.winborder = "rounded"

-- Diagnostic signs via the modern API (no legacy sign_define calls)
vim.diagnostic.config({
  virtual_text = { prefix = "●", spacing = 2 },
  severity_sort = true,
  update_in_insert = false,
  float = { border = "rounded", source = true },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "󰌵"
    }
  }
})

-- Disable a handful of unused built-in plugins for a marginally faster startup.
for _, name in ipairs({
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "matchit",
  "logiPat",
  "rrhelper",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers"
}) do
  vim.g["loaded_" .. name] = 1
end

-- Disable language providers we don't use. Silences the corresponding
-- :checkhealth warnings and skips the startup probe for each runtime.
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
-- Built-in completion
-- vim.o.complete    = '.,w,b,kspell'     -- Use less sources
-- vim.o.completeopt = 'menuone,noselect' -- Use custom behavior
vim.g.markdown_recommended_style = 0

vim.filetype.add({

  extension = {

    env = "dotenv"
  },

  filename = {

    [".env"] = "dotenv",

    ["env"] = "dotenv"
  },

  pattern = {

    ["[jt]sconfig.*.json"] = "jsonc",

    ["%.env%.[%w_.-]+"] = "dotenv"
  }
})
