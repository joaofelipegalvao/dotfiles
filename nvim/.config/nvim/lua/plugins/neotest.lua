return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "haydenmeade/neotest-jest",
    },
    opts = {
      adapters = {
        "neotest-jest",
      },
    },
  },
}
