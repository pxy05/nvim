-- plugins/telescope.lua:
	
return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require("telescope.builtin")
		-- safe to use here

		vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
		vim.keymap.set("n", "<C-p>", builtin.git_files, {})
		vim.keymap.set("n", "<leader>ps", function() 
			builtin.live_grep()
		end)
	end,
}
