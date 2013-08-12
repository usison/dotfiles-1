" Source:
source ~/.vim/vundle.vim
source ~/.vim/global.vim
source ~/.vim/functions.vim
source ~/.vim/keybindings.vim
source ~/.vim/plugin_config.vim
source ~/.vim/auto_commands.vim

set bg=dark
set term=xterm-256color
set background=dark
set guifont=VeroMono:h14

colorscheme jellybeans-lucas

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

if has("mouse")
  set mouse=a
endif
