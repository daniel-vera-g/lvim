-- ~/.config/lvim/ftplugin/go.lua
local dap = require("dap")
dap.adapters.go = {
	type = "executable",
	command = "go-debug-adapter",
}
dap.configurations.go = {
	{
		type = "go",
		name = "Debug",
		request = "launch",
		showLog = false,
		program = "${file}",
		dlvToolPath = vim.fn.exepath("dlv"),
	},
}
