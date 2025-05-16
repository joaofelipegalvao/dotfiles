return {
  -- Ferramentas adicionais para o Mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua", -- Formatter para Lua
        "selene", -- Linter para Lua
        "luacheck", -- Linter para Lua
        "shellcheck", -- Linter para shell scripts
        "shfmt", -- Formatter para shell scripts
        "tailwindcss-language-server", -- LSP para Tailwind CSS
        -- "typescript-language-server", -- Já instalado pelo lang.typescript
        "css-lsp", -- LSP para CSS
      })
    end,
  },

  -- Configurações de servidores LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      ---@type lspconfig.options
      servers = {
        cssls = {}, -- LSP para CSS
        tailwindcss = { -- LSP para Tailwind CSS
          root_dir = function(...)
            return require("lspconfig.util").root_pattern(".git")(...)
          end,
        },
        html = {}, -- LSP para HTML
        yamlls = { -- LSP para YAML
          settings = {
            yaml = {
              keyOrdering = false,
            },
          },
        },
        lua_ls = { -- LSP para Lua
          single_file_support = true,
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                workspaceWord = true,
                callSnippet = "Both",
              },
              misc = {
                parameters = {
                  -- "--log-level=trace",
                },
              },
              hint = {
                enable = true,
                setType = false,
                paramType = true,
                paramName = "Disable",
                semicolon = "Disable",
                arrayIndex = "Disable",
              },
              doc = {
                privateName = { "^_" },
              },
              type = {
                castNumberToInteger = true,
              },
              diagnostics = {
                disable = { "incomplete-signature-doc", "trailing-space" },
                groupSeverity = {
                  strong = "Warning",
                  strict = "Warning",
                },
                groupFileStatus = {
                  ["ambiguity"] = "Opened",
                  ["await"] = "Opened",
                  ["codestyle"] = "None",
                  ["duplicate"] = "Opened",
                  ["global"] = "Opened",
                  ["luadoc"] = "Opened",
                  ["redefined"] = "Opened",
                  ["strict"] = "Opened",
                  ["strong"] = "Opened",
                  ["type-check"] = "Opened",
                  ["unbalanced"] = "Opened",
                  ["unused"] = "Opened",
                },
                unusedLocalExclude = { "_*" },
              },
              format = {
                enable = false,
                defaultConfig = {
                  indent_style = "space",
                  indent_size = "2",
                  continuation_indent_size = "2",
                },
              },
            },
          },
        },
      },
      setup = {}, -- Configurações de setup (pode ser preenchido conforme necessário)
    },
  },
}
