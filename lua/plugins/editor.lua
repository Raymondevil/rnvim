require("nvim-autopairs").setup()

require("which-key").setup({
	preset = "modern",
	win = { border = "rounded" },
})

require("which-key").add({
	-- --- <leader> groups (the actual maps live in their plugin files) ---------
	{ "<leader>b", group = "Buffer (pin/close/pick)", icon = "" },
	{ "<leader>g", group = "Git (hunks/blame/lazygit)", icon = "" },
	{ "<leader>t", desc = "Terminal (vertical)", icon = "" },
	{ "<leader>x", group = "Trouble / Diagnostics", icon = "" },
	-- not overridden — see CLAUDE.md). gd/gD/gl/K are bound on LspAttach.
	{ "gr", group = "LSP actions (native 0.12)" },
	{ "gra", desc = "LSP: code Action", mode = { "n", "x" } },
	{ "grn", desc = "LSP: reName symbol" },
	{ "grr", desc = "LSP: References" },
	{ "gri", desc = "LSP: Implementations" },
	{ "grt", desc = "LSP: Type definition" },
	{ "gc", group = "Comment (builtin)", mode = { "n", "x" } },
	{ "gcc", desc = "Comment current line" },
	{ "gt", desc = "Next buffer (right)" },
	{ "gT", desc = "Prev buffer (left)" },

	-- --- bracket motions --------------------------------------------------------
	{ "[", group = "Prev (diagnostic/hunk/function…)" },
	{ "]", group = "Next (diagnostic/hunk/function…)" },

	-- --- window / tmux navigation (vim-tmux-navigator owns the maps) -----------

	-- --- buffer cycling ---------------------------------------------------------
	{ "<S-h>", desc = "Prev buffer" },
	{ "<S-l>", desc = "Next buffer" },
})
