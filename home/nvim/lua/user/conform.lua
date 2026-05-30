local ok, conform = pcall(require, "conform")
if not ok then
	vim.notify("conform.nvim not found", vim.log.levels.WARN)
	return
end

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff_format", "ruff_fix" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		css = { "prettier" },
		scss = { "prettier" },
		json = { "prettier" },
		jsonc = { "prettier" },
		html = { "htmlbeautifier" },
		yaml = { "yamlfix" },
		markdown = { "prettier" },
		c = { "clang-format" },
		cpp = { "clang-format" },
		rust = { "rustfmt" },
		go = { "gofmt", "goimports" },
		sh = { "shfmt" },
		bash = { "shfmt" },
		ruby = { "rubocop" },
		toml = { "taplo" },
		dockerfile = { "hadolint" },
		nix = { "nixfmt" },
	},

	format_on_save = {
		timeout_ms = 5000,
		lsp_format = "fallback",
	},

	notify_on_error = true,
})

-- Keymap for manual format
vim.keymap.set({ "n", "v" }, "<leader>f", function()
	conform.format({
		async = true,
		lsp_format = "fallback",
		timeout_ms = 5000,
	})
end, { desc = "Format buffer with conform" })
