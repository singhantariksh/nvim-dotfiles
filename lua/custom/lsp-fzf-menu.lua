-- ============================================================
-- Custom LSP Diagnostics Menu for FzfLua
-- ============================================================
-- Why? Because individual keymaps for so many LSP commands would be a headache.
-- Claude helped a bunch with this one.
--
-- Usage: require("custom.lsp-menu").open()
-- ============================================================

local Module = {}

-- ============================================================
-- Menu Items Configuration
-- ============================================================

local menu_items = {
	{
		display = " Document Symbols",
		command = "lsp_document_symbols",
	},
	{
		display = " Workspace Symbols",
		command = "lsp_workspace_symbols",
	},
	{
		display = " Live Workspace Symbols",
		command = "lsp_live_workspace_symbols",
	},
	{
		display = "󰌵 Code Actions",
		command = "lsp_code_actions",
	},
	{
		display = " Document Diagnostics",
		command = "lsp_document_diagnostics",
	},
	{
		display = " Workspace Diagnostics",
		command = "lsp_workspace_diagnostics",
	},
	{
		display = " Outgoing Calls",
		command = "lsp_outgoing_calls",
	},
	{
		display = " Incoming Calls",
		command = "lsp_incoming_calls",
	},
}

-- ============================================================
-- Open the LSP Menu
-- ============================================================
function Module.open()
	local ok, fzf = pcall(require, "fzf-lua")
	if not ok then
		vim.notify("FzfLua is not available", vim.log.levels.ERROR)
		return
	end

	-- Extract display names for FzfLua
	local items = {}
	for _, item in ipairs(menu_items) do
		table.insert(items, item.display)
	end

	fzf.fzf_exec(items, {
		prompt = "LSP Menu❯ ",
		fzf_opts = {
			["--header"] = "Select LSP Command",
			["--preview-window"] = "hidden",
		},
		winopts = {
			height = 0.40,
			width = 0.40,
			row = 0.35,
			col = 0.50,
		},
		actions = {
			["default"] = function(selected)
				if not selected or #selected == 0 then
					return
				end

				-- Find and execute the selected command
				for _, item in ipairs(menu_items) do
					if item.display == selected[1] then
						local command_fn = fzf[item.command]
						if type(command_fn) == "function" then
							command_fn()
						else
							vim.notify(
								string.format("Command '%s' is not available", item.command),
								vim.log.levels.WARN
							)
						end
						return
					end
				end
			end,
		},
	})
end

-- ============================================================
-- Helper: Add Custom Menu Item
-- ============================================================
function Module.add_item(item)
	if not item.display or not item.command then
		vim.notify("Menu item must have display and command fields", vim.log.levels.ERROR)
		return false
	end
	table.insert(menu_items, item)
	return true
end

-- ============================================================
-- Helper: Get All Menu Items (for debugging)
-- ============================================================
function Module.get_items()
	return vim.deepcopy(menu_items)
end

return Module
