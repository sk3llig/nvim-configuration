return {
  "folke/which-key.nvim",
  {"folke/neoconf.nvim", cmd="Neoconf"},
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  { -- optional cmp completion source for require statements and module annotations
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, {
        name = "lazydev",
        group_index = 0, -- set group index to 0 to skip loading LuaLS completions
      })
    end,},
    { "catppuccin/nvim", name = "catppuccin", priority = 1000,
        config= function()
          vim.cmd.colorscheme "catppuccin"
        end 
  }
   }
