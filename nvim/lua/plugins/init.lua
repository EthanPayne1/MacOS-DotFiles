local plugins = {
  {
    "stevearc/conform.nvim",
     event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"jdtls", "java" , "prettier", "clangd", "clang-format", "codelldb",
  		},
  	},
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },

  -- install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function ()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_mappings_enabled = 0
      vim.g.vimtex_indent_enabled = 0

      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_context_pdf_viewer = "skim"
      -- vim.g.vimtex_view_method = "vimtex-view-zathura"
      -- vim.g.vimtex_context_pdf_viewer = "vimtex-view-zathura"
    end,
  },

}
return plugins
