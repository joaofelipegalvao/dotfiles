-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Evita que certas operações afetem o registro padrão
keymap.set("n", "x", '"_x') -- Deleta um caractere sem copiar para o registro
keymap.set("n", "<Leader>p", '"0p') -- Cola o último yank (registro "0")
keymap.set("n", "<Leader>P", '"0P') -- Cola antes do cursor
keymap.set("v", "<Leader>p", '"0p') -- Cola no modo visual
keymap.set("n", "<Leader>c", '"_c') -- Muda sem copiar
keymap.set("n", "<Leader>C", '"_C') -- Muda até o final da linha sem copiar
keymap.set("v", "<Leader>c", '"_c') -- Muda sem copiar (modo visual)
keymap.set("v", "<Leader>C", '"_C') -- Muda até o final da linha sem copiar (modo visual)
keymap.set("n", "<Leader>d", '"_d') -- Deleta sem copiar
keymap.set("n", "<Leader>D", '"_D') -- Deleta até o final da linha sem copiar
keymap.set("v", "<Leader>d", '"_d') -- Deleta sem copiar (modo visual)
keymap.set("v", "<Leader>D", '"_D') -- Deleta até o final da linha sem copiar (modo visual)

-- Incrementa e decrementa números
keymap.set("n", "+", "<C-a>") -- Incrementa número sob o cursor
keymap.set("n", "-", "<C-x>") -- Decrementa número sob o cursor

-- Deleta uma palavra sem afetar o clipboard
keymap.set("n", "dw", 'vb"_d')

-- Seleciona todo o conteúdo do arquivo
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Impede a continuação automática de comentários ao adicionar uma nova linha
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts) -- Nova linha abaixo sem indentação
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts) -- Nova linha acima sem indentação

-- Navegação na lista de saltos (jumplist)
keymap.set("n", "<C-m>", "<C-i>", opts) -- Avança no histórico de saltos

-- Gerenciamento de abas
keymap.set("n", "te", ":tabedit<CR>", opts) -- Abre uma nova aba
keymap.set("n", "<tab>", ":tabnext<Return>", opts) -- Próxima aba
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts) -- Aba anterior

-- Gerenciamento de janelas (splits)
keymap.set("n", "ss", ":split<Return>", opts) -- Divide horizontalmente
keymap.set("n", "sv", ":vsplit<Return>", opts) -- Divide verticalmente

-- Navegação entre janelas
keymap.set("n", "sh", "<C-w>h") -- Move para a esquerda
keymap.set("n", "sk", "<C-w>k") -- Move para cima
keymap.set("n", "sj", "<C-w>j") -- Move para baixo
keymap.set("n", "sl", "<C-w>l") -- Move para a direita

-- Redimensionamento de janelas
keymap.set("n", "<C-w><left>", "<C-w><") -- Diminui largura
keymap.set("n", "<C-w><right>", "<C-w>>") -- Aumenta largura
keymap.set("n", "<C-w><up>", "<C-w>+") -- Aumenta altura
keymap.set("n", "<C-w><down>", "<C-w>-") -- Diminui altura
