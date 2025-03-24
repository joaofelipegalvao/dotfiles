return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- Modificando pumblend para testar a transparência
    vim.o.pumblend = 0 -- Aumenta a transparência

    -- Verificar se a seção 'signature' está presente antes de acessar
    if opts.signature and opts.signature.window then
      opts.signature.window.winblend = vim.o.pumblend
    end

    -- Verificar se a seção 'completion' está presente
    if opts.completion and opts.completion.menu then
      opts.completion.menu.winblend = vim.o.pumblend
    end
  end,
}
