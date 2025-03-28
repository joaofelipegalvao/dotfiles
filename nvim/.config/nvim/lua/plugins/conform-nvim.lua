return {
  -- Configuração do nvim-jdtls
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      opts.settings = vim.tbl_deep_extend("force", opts.settings or {}, {
        java = {
          format = {
            enabled = false, -- Desativa o formatador do jdtls
          },
        },
      })
    end,
  },

  -- Configuração do conform.nvim
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Mescla as configurações personalizadas com as padrões do LazyVim
      opts.formatters_by_ft = vim.tbl_deep_extend("force", opts.formatters_by_ft or {}, {
        java = { { name = "google-java-format", cmd = "usr/local/bin/google-java-format" } },
      })
    end,
  },
}
