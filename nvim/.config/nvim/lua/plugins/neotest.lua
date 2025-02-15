return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "haydenmeade/neotest-jest", -- Adaptador para Jest
    },
    opts = function(_, opts)
      -- Adiciona o adaptador neotest-jest à lista existente de adaptadores
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npm test", -- Comando para executar os testes
          jestConfigFile = "jest.config.js", -- Arquivo de configuração do Jest
          env = { CI = true }, -- Variáveis de ambiente
          cwd = function()
            return vim.fn.getcwd() -- Diretório raiz do projeto
          end,
        })
      )
      return opts
    end,
  },
}
