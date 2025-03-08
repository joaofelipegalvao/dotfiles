[![screenshot-08032025-183411.jpg](https://i.postimg.cc/76VFLzvW/screenshot-08032025-183411.jpg)](https://postimg.cc/PpC33P5W)
[![screenshot-08032025-184321.jpg](https://i.postimg.cc/tJsBHn9P/screenshot-08032025-184321.jpg)](https://postimg.cc/PvkWWxpr)

## Dotfiles

Este repositório contém meus arquivos de configuração pessoais (dotfiles) para diversas ferramentas e aplicativos no Arch Linux. Ele foi projetado para facilitar a gestão e sincronização do meu ambiente de desenvolvimento.

**Aviso:** Não use minhas configurações cegamente, a menos que você saiba o que isso implica. Use por sua própria conta e risco!

## Conteúdo

- vim (Neovim) config
- tmux config
- lazygit config
- yazi
- starship

## Conteúdo

- vim (Neovim) config
- tmux config
- lazygit config
- yazi
- starship

## Neovim setup

### Requisitos

- Neovim >= 0.9.0 (precisa ser compilado com LuaJIT)
- Git >= 2.19.0 (para suporte a clones parciais)
- **[LazyVim](https://www.lazyvim.org/)**
- **[Nerd Font](https://www.nerdfonts.com/)** (v3.0 ou superior) (opcional, mas necessário para exibir alguns ícones)
- **[Lazygit](https://github.com/jesseduffield/lazygit)** (opcional)
- um compilador **C** para <code>nvim-treesitter</code>. Veja **[aqui](https://github.com/nvim-treesitter/nvim-treesitter#requirements)**
- um terminal que suporte cores verdadeiras e <i>undercurl</i>:
  - **[kitty](https://github.com/kovidgoyal/kitty)** (Linux & Macos)
  - **[wezterm](https://github.com/wezterm/wezterm)** (Linux, Macos & Windows)
  - **[alacritty](https://github.com/alacritty/alacritty)** (Linux, Macos & Windows)
  - **[iterm2](https://iterm2.com/)** (Macos)
- **[Tokyo Night Lazyvim](https://github.com/folke/tokyonight.nvim)**

## Configuração do Shell (macOS & Linux)

- **[Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)**
- **[Starship](https://github.com/starship/starship)**
- **[Zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)**
- **[Zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)**
- **[Nerd fonts](https://github.com/ryanoasis/nerd-fonts)** - Fontes modificadas para uso no desenvolvimento. Eu uso **[PlemolJP](https://github.com/yuru7/PlemolJP)** e BlexMono.
- **[Zoxide](https://github.com/ajeetdsouza/zoxide)** Navegação entre diretórios.
- **[Eza](https://github.com/eza-community/eza)** - Substituto do <code>ls</code>
- **[ghq](https://github.com/x-motemen/ghq)** - Organizador de repositórios Git locais
- **[fzf](https://github.com/PatrickF1/fzf.fish)** - Localizador fuzzy
