-- Adds git related signs to the gutter, as well as utilities for managing changes
return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "U" },
			change = { text = "M" },
			delete = { text = "D" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
		signs_staged = {
			add = { text = "US" },
			change = { text = "MS" },
			delete = { text = "DS" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
	},
}
