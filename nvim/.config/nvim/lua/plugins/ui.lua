return {
  -- buffer line
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.options.show_buffer_close_icons = false
      opts.options.show_close_icon = false
    end,
  },
  -- {
  --   "b0o/incline.nvim",
  --   dependencies = { "folke/tokyonight.nvim" },
  --   event = "BufReadPre",
  --   priority = 1200,
  --   config = function()
  --     local colors = require("tokyonight.colors").setup()
  --     require("incline").setup({
  --       highlight = {
  --         groups = {
  --           -- Personaliza a aparência dos arquivos
  --           InclineNormal = { guibg = colors.magenta2, guifg = colors.bg },
  --           InclineNormalNC = { guifg = colors.bg, guibg = colors.comment },
  --         },
  --       },
  --       window = { margin = { vertical = 0, horizontal = 1 } },
  --       hide = {
  --         cursorline = true,
  --       },
  --       render = function(props)
  --         local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
  --         if vim.bo[props.buf].modified then
  --           filename = "[+] " .. filename
  --         end
  --
  --         local icon, color = require("nvim-web-devicons").get_icon_color(filename)
  --         return { { icon, guifg = color }, { " " }, { filename } }
  --       end,
  --     })
  --   end,
  -- },

  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local LazyVim = require("lazyvim.util")
      opts.sections.lualine_c[4] = {
        LazyVim.lualine.pretty_path({
          length = 0,
          relative = "cwd",
          modified_hl = "MatchParen",
          directory_hl = "",
          filename_hl = "Bold",
          modified_sign = "",
          readonly_icon = " 󰌾 ",
        }),
      }
      opts.sections.lualine_z = {
        function()
          return " "
        end,
      }
    end,
  },
  {
    "folke/snacks.nvim",
    lazy = false,
    opts = {
      -- Configuração do LazyGit
      lazygit = {
        configure = true,
        config = {
          os = { editPreset = "nvim-remote" },
          gui = {
            nerdFontsVersion = "3",
          },
        },
        win = {
          style = "lazygit",
        },
      },

      -- Configuração do Dashboard
      dashboard = {
        enabled = true,
        preset = {
          header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
        ]],
        },
      },
    },
    keys = {
      {
        "<leader>lg",
        "<cmd>lua require('snacks.lazygit').open()<CR>",
        desc = "Open LazyGit",
      },
      { "<leader>ll", "<cmd>lua require('snacks.lazygit').log()<CR>", desc = "Open LazyGit Log" },
      {
        "<leader>lf",
        "<cmd>lua require('snacks.lazygit').log_file()<CR>",
        desc = "Open LazyGit Log for Current File",
      },
    },
  },
}
