-- ============================================================================
--  plugins/bufferline.lua — tab-style buffer list along the top
--
--  Buffer navigation keymaps already live in config/keymaps.lua:
--    <S-h>/<S-l>   prev/next buffer
--    <leader>bd    delete buffer
-- ============================================================================

require("bufferline").setup({
	options = {
		mode = "buffers",
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
		separator_style = "slant",
		show_buffer_close_icons = false,
		show_close_icon = false,
		always_show_bufferline = true,
		-- Reserve space for the nvim-tree sidebar so the tabs line up with
		-- the actual editor area instead of the tree.
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				separator = true,
			},
		},
	},
	highlights = {
		fill = {
			fg = "#02FF5E",
			bg = "#021100",
		},
		background = {
			fg = "#F35360",
			bg = "#021100",
		},
		tab = {
			fg = "#F02946",
			bg = "#021100",
		},
		tab_selected = {
			fg = "#F34536",
			bg = "#021100",
		},
		tab_separator = {
			fg = "#02FF5E",
			bg = "#021100",
		},
		tab_separator_selected = {
			fg = "#02FF5E",
			bg = "#021100",
			sp = "#FF5540",
			-- underline = '<colour-value-here>',
		},
		tab_close = {
			fg = "#CB33FF",
			bg = "#021100",
		},
		close_button = {
			fg = "#4B93FF",
			bg = "#021100",
		},
		close_button_visible = {
			fg = "#B903FF",
			bg = "#021100",
		},
		close_button_selected = {
			fg = "#0293FF",
			bg = "#021100",
		},
		buffer_visible = {
			fg = "#CB93FF",
			bg = "#021100",
		},
		buffer_selected = {
			fg = "#FFc450",
			bg = "#021100",
			bold = true,
			italic = true,
		},
		numbers = {
			fg = "#F2AFFF",
			bg = "#021100",
		},
		numbers_visible = {
			fg = "#F2AFFF",
			bg = "#021100",
		},
		numbers_selected = {
			fg = "#F2AFFF",
			bg = "#021100",
			bold = true,
			italic = true,
		},
		diagnostic = {
			fg = "#37E0FF",
			bg = "#021100",
		},
		diagnostic_visible = {
			fg = "#37E0FF",
			bg = "#021100",
		},
		diagnostic_selected = {
			fg = "#37E0FF",
			bg = "#021100",
			bold = true,
			italic = true,
		},
		hint = {
			fg = "#37E0FF",
			sp = "#FF5540",
			bg = "#021100",
		},
		hint_visible = {
			fg = "#37E0FF",
			bg = "#021100",
		},
		hint_selected = {
			fg = "#37E0FF",
			bg = "#021100",
			sp = "#FF5540",
			bold = true,
			italic = true,
		},
		hint_diagnostic = {
			fg = "#37E0FF",
			sp = "#FF5540",
			bg = "#021100",
		},
		hint_diagnostic_visible = {
			fg = "#37E0FF",
			bg = "#021100",
		},
		hint_diagnostic_selected = {
			fg = "#37E0FF",
			bg = "#021100",
			sp = "#FF5540",
			bold = true,
			italic = true,
		},
		info = {
			fg = "#37E0FF",
			sp = "#FF5540",
			bg = "#021100",
		},
		info_visible = {
			fg = "#37E0FF",
			bg = "#021100",
		},
		info_selected = {
			fg = "#37E0FF",
			bg = "#021100",
			sp = "#FF5540",
			bold = true,
			italic = true,
		},
		info_diagnostic = {
			fg = "#37E0FF",
			sp = "#FF5540",
			bg = "#021100",
		},
		info_diagnostic_visible = {
			fg = "#37E0FF",
			bg = "#021100",
		},
		info_diagnostic_selected = {
			fg = "#37E0FF",
			bg = "#021100",
			sp = "#FF5540",
			bold = true,
			italic = true,
		},
		warning = {
			fg = "#37E0FF",
			sp = "#FF5540",
			bg = "#021100",
		},
		warning_visible = {
			fg = "#37E0FF",
			bg = "#021100",
		},
		warning_selected = {
			fg = "#37E0FF",
			bg = "#021100",
			sp = "#FF5540",
			bold = true,
			italic = true,
		},
		warning_diagnostic = {
			fg = "#37E0FF",
			sp = "#FF5540",
			bg = "#021100",
		},
		warning_diagnostic_visible = {
			fg = "#02FF5E",
			bg = "#021100",
		},
		warning_diagnostic_selected = {
			fg = "#02F5E0",
			bg = "#021100",
			sp = "#FF5540",
			bold = true,
			italic = true,
		},
		error = {
			fg = "#0200FE",
			bg = "#021100",
			sp = "#FF5540",
		},
		error_visible = {
			fg = "#02FF5E",
			bg = "#021100",
		},
		error_selected = {
			fg = "#02FF5E",
			bg = "#021100",
			sp = "#FF5540",
			bold = true,
			italic = true,
		},
		error_diagnostic = {
			fg = "#FF335E",
			bg = "#021100",
			sp = "#FF5540",
		},
		error_diagnostic_visible = {
			fg = "#582F5E",
			bg = "#021100",
		},
		error_diagnostic_selected = {
			fg = "#a24F5E",
			bg = "#021100",
			sp = "#FF5540",
			bold = true,
			italic = true,
		},
		modified = {
			fg = "#024F5E",
			bg = "#021100",
		},
		modified_visible = {
			fg = "#02FF5E",
			bg = "#021100",
		},
		modified_selected = {
			fg = "#ff202E",
			bg = "#021100",
		},
		duplicate_selected = {
			fg = "#02FF5E",
			bg = "#021100",
			italic = true,
		},
		duplicate_visible = {
			fg = "#02FF5E",
			bg = "#021100",
			italic = true,
		},
		duplicate = {
			fg = "#f22d5E",
			bg = "#021100",
			italic = true,
		},
		separator_selected = {
			fg = "#7F125E",
			bg = "#021100",
		},
		separator_visible = {
			fg = "#02FF5E",
			bg = "#021100",
		},
		separator = {
			fg = "#f2FF5E",
			bg = "#021100",
		},
		indicator_visible = {
			fg = "#02FF5E",
			bg = "#021100",
		},
		indicator_selected = {
			fg = "#02FF5E",
			bg = "#021100",
		},
		pick_selected = {
			fg = "#02FF5E",
			bg = "#021100",
			bold = true,
			italic = true,
		},
		pick_visible = {
			fg = "#02FF5E",
			bg = "#021100",
			bold = true,
			italic = true,
		},
		pick = {
			fg = "#02FF5E",
			bg = "#021100",
			bold = true,
			italic = true,
		},
		offset_separator = {
			fg = "#02FF5E",
			bg = "#021100",
		},
		trunc_marker = {
			fg = "#02FF5E",
			bg = "#021100",
		},
	},
})

local map = function(lhs, rhs, desc)
	vim.keymap.set("n", lhs, rhs, { desc = desc, silent = true })
end

map("<leader>bp", "<cmd>BufferLineTogglePin<CR>", "[B]uffer: toggle [p]in")
map("<leader>bc", "<cmd>BufferLineCloseOthers<CR>", "[B]uffer: [c]lose others")
map("<leader>bh", "<cmd>BufferLineCloseLeft<CR>", "[B]uffer: close [h]-left")
map("<leader>bl", "<cmd>BufferLineCloseRight<CR>", "[B]uffer: close [l]-right")
map("<leader>bP", "<cmd>BufferLinePick<CR>", "[B]uffer: [P]ick")

-- gt/gT cycle buffers in the order shown in the bufferline (respects pins),
-- mirroring their native tab-page meaning since this config uses buffers as
-- "tabs". <S-h>/<S-l> in config/keymaps.lua do the same via :bnext/:bprev.
map("gt", "<cmd>BufferLineCycleNext<CR>", "Next buffer (right)")
map("gT", "<cmd>BufferLineCyclePrev<CR>", "Prev buffer (left)")
