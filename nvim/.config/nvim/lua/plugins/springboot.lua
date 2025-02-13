return {
  -- Adiciona o plugin do Spring Boot
  {
    "elmcgill/springboot-nvim",
    ft = "java",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-jdtls",
    },
    config = function()
      vim.schedule(function()
        local springboot_nvim = require("springboot-nvim")

        -- Atalhos para interagir com Spring Boot
        vim.keymap.set("n", "<leader>Jr", springboot_nvim.boot_run, { desc = "[J]ava [R]un Spring Boot" })
        vim.keymap.set("n", "<leader>Jc", springboot_nvim.generate_class, { desc = "[J]ava Create [C]lass" })
        vim.keymap.set("n", "<leader>Ji", springboot_nvim.generate_interface, { desc = "[J]ava Create [I]nterface" })
        vim.keymap.set("n", "<leader>Je", springboot_nvim.generate_enum, { desc = "[J]ava Create [E]num" })

        -- Executa a configuração do plugin
        springboot_nvim.setup({})
      end)
    end,
  },
}
