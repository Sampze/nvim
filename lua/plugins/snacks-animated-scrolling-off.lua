return {
	"folke/snacks.nvim",
	opts = {
		scroll = {
			enabled = false, -- Disable scrolling animations
		},
	},
	-- This keeps the image on the top right corner, basically leaving your
	-- text area free, suggestion found in reddit by user `Redox_ahmii`
	-- https://www.reddit.com/r/neovim/comments/1irk9mg/comment/mdfvk8b/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button
	styles = {
		snacks_image = {
			relative = "editor",
			col = -1,
		},
	},
	image = {
		enabled = true,
		doc = {
			-- Personally I set this to false, I don't want to render all the
			-- images in the file, only when I hover over them
			-- render the image inline in the buffer
			-- if your env doesn't support unicode placeholders, this will be disabled
			-- takes precedence over `opts.float` on supported terminals
			inline = false,
			-- inline = vim.g.neovim_mode == "skitty" and true or false,
			-- render the image in a floating window
			-- only used if `opts.inline` is disabled
			float = true,
			-- Sets the size of the image
			--max_width = vim.g.neovim_mode == "skitty" and 20 or 60,
			--max_height = vim.g.neovim_mode == "skitty" and 10 or 30,
			max_width = 60,
			max_height = 30,
			-- Apparently, all the images that you preview in neovim are converted
			-- to .png and they're cached, original image remains the same, but
			-- the preview you see is a png converted version of that image
			--
			-- Where are the cached images stored?
			-- This path is found in the docs
			-- :lua print(vim.fn.stdpath("cache") .. "/snacks/image")
			-- For me returns `~/.cache/neobean/snacks/image`
			-- Go 1 dir above and check `sudo du -sh ./* | sort -hr | head -n 5`
		},
	},
	bigfile = { enabled = true },
	dashboard = { enabled = true },
	explorer = { enabled = true },
	indent = { enabled = true },
	input = { enabled = true },
	picker = { enabled = true },
	notifier = { enabled = true },
	quickfile = { enabled = true },
	scope = { enabled = true },
	scroll = { enabled = true },
	statuscolumn = { enabled = true },
	words = { enabled = true },
}
