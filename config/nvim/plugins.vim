" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')

" === Editing Plugins === "
Plug 'tc50cal/vim-terminal'
Plug 'wincent/terminus'
" Plug 'jooize/vim-colemak'


" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" Plugin to move lines and selections up and down
Plug 'matze/vim-move'
Plug 'justinmk/vim-sneak'
Plug 'leafoftree/vim-blink'
Plug 't9md/vim-choosewin'
Plug 'romgrk/winteract.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/LeaderF'

" Trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'

" auto-close plugin
Plug 'rstacruz/vim-closer'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'

" Intellisense Engine
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'for': 'javascript' }
" Plug 'zxqfl/tabnine-vim'
" Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdcommenter'

" Tmux/Neovim movement integration
Plug 'christoomey/vim-tmux-navigator'

" Vim plugin for .tmux.conf
Plug 'tmux-plugins/vim-tmux'

" Denite - Fuzzy finding, buffer management
" Plug 'Shougo/denite.nvim', { 'commit': '29bfd4c53271c7a150def2388e059746ae4c1713' }

" Snippet support
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'

" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tomhoule/gitmoji-selector'

" === Javascript Plugins === "
" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" ReactJS JSX syntax highlighting
Plug 'mxw/vim-jsx'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" === Syntax Highlighting === "

" Syntax highlighting for nginx
" Plug 'chr4/nginx.vim'

" Syntax highlighting for javascript libraries
Plug 'othree/javascript-libraries-syntax.vim'
" Plug 'digitaltoad/vim-pug'
" Plug 'posva/vim-vue'
Plug 'leafOfTree/vim-vue-plugin'
" Plug 'ap/vim-css-color'
" Plug 'Quramy/tsuquyomi-vue'

" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'
Plug 'sheerun/vim-polyglot'
Plug 'ekalinin/Dockerfile.vim'

" === UI === "
" File explorer
Plug 'scrooloose/nerdtree'

" Colorscheme
Plug 'mhartington/oceanic-next'

" Customized vim status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"The undo history visualizer for VIM
Plug 'mbbill/undotree'

" Initialize plugin system
call plug#end()
