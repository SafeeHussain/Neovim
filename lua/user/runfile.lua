local Terminal = require("toggleterm.terminal").Terminal

local M = {}

-- Use a fixed terminal ID (choose any integer, e.g., 24)
local runterm = Terminal:new({
	id = 24,
	direction = "horizontal",
	close_on_exit = false,
	hidden = true,
})

function M.run_current_file()
	local file_path = vim.api.nvim_buf_get_name(0)
	local ft = vim.bo.filetype
	local cmd

	if ft == "python" then
		cmd = "python3 " .. file_path .. "; exec $SHELL"
	elseif ft == "lua" then
		cmd = "lua " .. file_path .. "; exec $SHELL"
	elseif ft == "cpp" or ft == "c" then
		local out = vim.fn.expand("%:r")
		if ft == "cpp" then
			cmd = "g++ " .. file_path .. " -o " .. out .. " && ./" .. out .. "; exec $SHELL"
		else
			cmd = "gcc " .. file_path .. " -o " .. out .. " && ./" .. out .. "; exec $SHELL"
		end
	else
		print("Filetype not supported for run command")
		return
	end

	-- Always open (toggle) the persistent terminal
	runterm:toggle()

	-- Send the command to the terminal, followed by a newline to execute
	runterm:send(cmd .. "\n")
end

return M
