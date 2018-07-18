""      ▄████████   ▄▄▄▄███▄▄▄▄    ▄████████  ▄██████▄     ▄████████  ▄█    █▄   ▄█
""      ███    ███ ▄██▀▀▀███▀▀▀██▄ ███    ███ ███    ███   ███    ███ ███    ███ ███
""      ███    ███ ███   ███   ███ ███    █▀  ███    ███   ███    ███ ███    ███ ███▌
""      ███    ███ ███   ███   ███ ███        ███    ███  ▄███▄▄▄▄██▀ ███    ███ ███▌
""    ▀███████████ ███   ███   ███ ███        ███    ███ ▀▀███▀▀▀▀▀   ███    ███ ███▌
""      ███    ███ ███   ███   ███ ███    █▄  ███    ███ ▀███████████ ███    ███ ███
""      ███    ███ ███   ███   ███ ███    ███ ███    ███   ███    ███ ███    ███ ███
""      ███    █▀   ▀█   ███   █▀  ████████▀   ▀██████▀    ███    ███  ▀██████▀  █▀
""                                                         ███    ███              "
" Author: Mr. Corvi
"

  " Setup dein  ---------------------------------------------------------------{{{
    if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
      call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
      call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
    endif

    set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
    call dein#begin(expand('~/.config/nvim'))
    call dein#add('Shougo/dein.vim')
    call dein#add('haya14busa/dein-command.vim')

    " SYNTAX"---------------------------------{{{

        " Javascript"------------{{{

            call dein#add('elzr/vim-json')
            call dein#add('prettier/vim-prettier')
            call dein#add('heavenshell/vim-jsdoc', {'on_ft': 'javascript'})
            call dein#add('othree/jsdoc-syntax.vim', {'on_ft': 'javascript'})
            call dein#add('pangloss/vim-javascript',  {'on_ft': 'javascript'}) "Vastly improved Javascript indentation and syntax support in Vim.
            call dein#add('othree/yajs.vim') " Yet Another Javascript Syntax
            call dein#add("flowtype/vim-flow") " A vim plugin for Flow
            call dein#add('carlitux/deoplete-ternjs',  {'on_ft': 'javascript'}) "deoplete.nvim source for javascript{'build': ' sudo yarn global add tern '}
            call dein#add('ternjs/tern_for_vim', { 'build': 'yarn install'}) " This is a Vim plugin that provides Tern-based JavaScript editing support.
            call dein#add('HerringtonDarkholme/yats.vim') "YATS: Yet Another TypeScript Syntax
            call dein#add('mxw/vim-jsx') "YATS: Yet Another TypeScript Syntax
            " call dein#add('1995eaton/vim-better-javascript-completion') "An expansion of Vim's current JavaScript syntax file.

        "}}}

        "HTML"------------{{{
            call dein#add('digitaltoad/vim-pug')
            call dein#add('mattn/emmet-vim')
            call dein#add('othree/html5.vim')
            call dein#add('skwp/vim-html-escape')
            " call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'}) "A Vim plugin that always highlights the enclosing html/xml tags
            call dein#add('vingorius/pug-beautifier') " Pug(formerly jade) beautify CLI
        "}}}

        "CSS"------------{{{
            call dein#add('hail2u/vim-css3-syntax')
            call dein#add('ap/vim-css-color')
        "}}}

        "English"------------{{{
            call dein#add('rhysd/vim-grammarous') "vim-grammarous is a powerful grammar checker for Vim. Simply do :GrammarousCheck
        "}}}

        "Markdown"------------{{{
            call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
            " call dein#add('vimlab/mdown.vim', {'on_ft': 'markdown'})
            " call dein#add('euclio/vim-markdown-composer', {
            "   'build': 'cargo build --release'
            " })
            " call dein#add('iamcco/markdown-preview.vim') " Real-time markdown preview plugin for vim
            " call dein#add('nelstrom/vim-markdown-folding', {'on_ft': 'markdown'})
            " call dein#add('nelstrom/vim-markdown-preview', {'on_ft': 'markdown'})
            " call dein#add('JamshedVesuna/vim-markdown-preview') " Preview Markdown File in Browser
        "}}}

        "Python"------------{{{
            call dein#add('zchee/deoplete-jedi') "deoplete.nvim source for Python
            call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'}) "No-BS Python code folding for Vim
            call dein#add('lepture/vim-jinja') " jinja plugins for vim (syntax and indent)
            call dein#add('hdima/python-syntax') " Python syntax highlighting script for Vim http://www.vim.org/scripts/script.php…
            " call dein#add('davidhalter/jedi-vim', {'on_ft': 'python'}) "Python autocompletion with VIM
        "}}}

        " GO"-------------{{{
            call dein#add('sebdah/vim-delve')
            call dein#add('neovim/go-client')
            call dein#add('zchee/deoplete-go', {'build': 'make'}) "deoplete.nvim source for Go. Asynchronous Go completion for Neovim
            call dein#add('nsf/gocode') " A Go bundle for Vundle or Pathogen
            " call dein#add('zchee/nvim-go', {'build': 'make'}) " Go development plugin for Neovim written in pure Go
            " call dein#add('fatih/vim-go') " Go development plugin for Neovim written in pure Go
        "}}}

        "Java"---------------------------------{{{
            call dein#add('artur-shaik/vim-javacomplete2') "Updated javacomplete plugin for vim.
        "}}}

        "Docker"---------------------------------{{{
            call dein#add('ekalinin/Dockerfile.vim') " Docker syntx highlisting
        "}}}

        "LaTeX"---------------------------------{{{
            call dein#add('lervag/vimtex') " A modern vim plugin for editing LaTeX files.
        "}}}

        "Solidty"---------------------------------{{{
        call dein#add('tomlion/vim-solidity') " Vim syntax file for solidity
        "}}}

        "R(lang)"---------------------------------{{{
            call dein#add('jalvesaq/Nvim-R') " Vim plugin to work with R
        "}}}

        "ReasonML/OCaml"---------------------------------{{{
          call dein#add('copy/deoplete-ocaml')
          call dein#add('rgrinberg/vim-ocaml') " Vim runtime files for OCaml
          call dein#add('reasonml-editor/vim-reason-plus') " Reason Vim editor integration
          call dein#add("OCamlPro/ocp-indent") "Indentation tool for OCaml, to be used from editors like Emacs and Vim.
          call dein#add("ocaml/merlin") "Context sensitive completion for OCaml in Vim and Emacs
          " call dein#local('~/.opam/4.04.0/share/merlin/')
          " call dein#add('facebook/reason', {'rtp': 'editorSupport/VimReason'})
        "}}}

    "}}}

    " BOLT-ON PLUGINS"---------------------------------{{{

      " Add-on Features"-----------{{{
          call dein#add('tmux-plugins/vim-tmux')
          call dein#add('vim-airline/vim-airline')
          call dein#add('Zuckonit/vim-airline-tomato')
          call dein#add('rmolin88/pomodoro.vim') " Bring the beauty of the Pomodoro technique to (Neo)Vim
          call dein#add("jpalardy/vim-slime") " SLIME is an Emacs plugin to turn Emacs into a REPL.
          call dein#add('djoshea/vim-autoread') " Have Vim automatically reload a file that has changed externally
          call dein#add('junegunn/fzf') " A command-line fuzzy finder REASON DEPENDENCY
          call dein#add('autozimu/LanguageClient-neovim',{'build': 'install.sh', 'rev': 'next'}) " Language Server Protocol (LSP) support for vim and neovim.
          call dein#add('tpope/vim-jdaddy') " jdaddy.vim: JSON manipulation and pretty printing
          call dein#add('vim-scripts/CycleColor') " Cycles through available colorschemes
          call dein#add('TheZoq2/neovim-auto-autoread') "Plugin that makes autoread actually work as expected in neovim
          call dein#add('metakirby5/codi.vim') "The interactive scratchpad for hackers.
          call dein#add('majutsushi/tagbar') " Vim plugin that displays tags in a window, ordered by scope
          call dein#add('tomtom/tcomment_vim') " An extensible & universal comment vim-plugin
          call dein#add('rizzatti/dash.vim') " Search Dash.app from Vim
          call dein#add('mattn/gist-vim') " This is a vimscript for creating gists
          call dein#add('mattn/webapi-vim') " vim interface to Web API
          call dein#add('danro/rename.vim') " Rename the current file in the vim buffer + retain relative path.
          call dein#add('rhysd/vim-grammarous') " A powerful grammar checker for Vim using LanguageTool.
          " call dein#add('vim-scripts/YankRing.vim') " Maintains a history of previous yanks, changes and deletes http://www.vim.org/scripts/script.php�
          " call dein#add('ctrlpvim/ctrlp.vim')
          " call dein#add('justinmk/vim-sneak')

      "}}}

      "Movement"-----------{{{
          call dein#add('christoomey/vim-tmux-navigator')
          call dein#add("rhysd/clever-f.vim") " Extended f, F, t and T key mappings for Vim. https://rhysd.github.io/clever-f.vim
          call dein#add('terryma/vim-multiple-cursors') " Multiple Cursors as described
          call dein#add('itmammoth/doorboy.vim') "Vim plugin for auto closing brackets ( => (|) and quotations
          call dein#add('sjl/vitality.vim') " (Vit)ality is a plugin that makes (V)im play nicely with (i)Term 2 and (t)mux.
      "}}}

      "Formatting"-----------{{{
          call dein#add('tpope/vim-surround')
          call dein#add('neomake/neomake', {'on_cmd': 'Neomake'})
          call dein#add('sbdchd/neoformat')
          call dein#add('nicwest/vim-camelsnek') " Convert between camel and snek case (and kebab case)
          call dein#add('tpope/vim-unimpaired') " Pairs of handy bracket mappings
          call dein#add('dhruvasagar/vim-table-mode') "An awesome automatic table creator & formatter allowing one to create neat tables as you type.
          call dein#add('godlygeek/tabular') " Vim script for text filtering and alignment
          call dein#add('AndrewRadev/switch.vim')
          call dein#add('vim-scripts/SyntaxRange') "Define a different filetype syntax on regions of a buffer
      "}}}

      "Default Behavior Modifiers"-----------{{{
          call dein#add('editorconfig/editorconfig-vim')
          call dein#add('jremmen/vim-ripgrep')
          call dein#add('tpope/vim-repeat') "Repeat.vim remaps . in a way that plugins can tap into it.
          call dein#add('junegunn/limelight.vim') "Dim text code blocks not being focused upon by cursor
          call dein#add('Konfekt/FastFold') "Speed up Vim by updating folds only when called-for.
          call dein#add('mhinz/vim-sayonara') " Basically you don't have to think in terms of :bdelete, :close, :quit etc. anymore.
          call dein#add('MartinLafreniere/vim-PairTools') "Pairing Punctuationa and grammer pairs
          " call dein#local('~/GitHub', {},['vim-folds'])
          " call dein#local('~/GitHub', {},['oceanic-next'])
          " call dein#local('~/GitHub', {},['operator-next'])
          " call dein#local('~/GitHub', {},['nvim-typescript'])
          " call dein#add('ujihisa/neco-look') " A neocomplcache plugin for English, using look command
      "}}}

      "NERDTree"-----------{{{
          call dein#add('scrooloose/nerdtree')
          call dein#add('Xuyuanp/nerdtree-git-plugin') "A plugin of NERDTree showing git status flags.
          call dein#add('ryanoasis/vim-devicons') " Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, and more
          call dein#add('tiagofumo/vim-nerdtree-syntax-highlight') " Extra syntax and highlight for nerdtree files
      "}}}

      "Git"-----------{{{
          call dein#add('tpope/vim-fugitive')
          call dein#add('tpope/vim-rhubarb')
          call dein#add('chemzqm/vim-easygit')
          call dein#add('jreybert/vimagit', {'on_cmd': ['Magit', 'MagitOnly']})
          call dein#add('sgeb/vim-diff-fold')
          call dein#add('airblade/vim-gitgutter')
          call dein#add('junegunn/gv.vim') "A git commit browser. ':GV'
          call dein#add('lambdalisue/gina.vim') "Asynchronously control git repositories in Neovim/Vim 8
      "}}}

      " THEMES"-----------{{{
            call dein#add('dennougorilla/azuki.vim')
            call dein#add('jyota/vimColors') " eva
            call dein#add('rhysd/vim-color-spring-night')
            call dein#add('bluz71/vim-moonfly-colors')
            call dein#add('smancill/darkglass')
            call dein#add('roosta/vim-srcery')
            call dein#add('sonjapeterson/1989.vim')
            call dein#add('vim-scripts/turbo.vim')
            call dein#add('stulzer/heroku-colorscheme')
            call dein#add('vim-scripts/proton')
            call dein#add('elmindreda/vimcolors')
            call dein#add('Zabanaa/neuromancer.vim')
            call dein#add('jyota/vimColors')
            call dein#add('MaxSt/FlatColor')
            call dein#add('vim-scripts/pink')
            call dein#add('vim-scripts/synic.vim')
            call dein#add('vim-airline/vim-airline-themes')
            call dein#add('chriskempson/base16-vim')
            call dein#add('hauleth/blame.vim')
            call dein#add('lu-ren/SerialExperimentsLain')
      "}}}


      " I WANT TO DECLARE A TOAST TO THE NEOVIM KING SHOUGO"---------------------------------{{{

      " deoplete stuff"-----------{{{
          call dein#add('Shougo/deoplete.nvim')
          call dein#add('Shougo/deol.nvim')
      "}}}

      "Denite stuff"-----------{{{
        call dein#add('Shougo/denite.nvim') " Denite is a dark powered plugin for Neovim/Vim to unite all interfaces
        call dein#add('Shougo/neomru.vim') " MRU plugin includes unite.vim/denite.nvim MRU sources
        call dein#add('Shougo/context_filetype.vim') " Context filetype library for Vim script
        call dein#add('chemzqm/denite-git') " gitlog, gitstatus and gitchanged source for denite.nvim
        call dein#add('pocari/vim-denite-gists') " denite.nvim plugin for show and browse Gist
        call dein#add('chemzqm/denite-git') "gitlog, gitstatus and gitchanged source for denite.nvim
        call dein#add('Shougo/vimfiler.vim') " Powerful file explorer implemented by Vim script
        call dein#add('Shougo/unite.vim') " Unite and create user interfaces
      "}}}

      "Snippet and Completions"-----------{{{
          call dein#add('Shougo/neco-vim') "The vim source for neocomplete/deoplete
          call dein#add('Shougo/neoinclude.vim') "Include completion framework for neocomplete/deoplete
          call dein#add('Shougo/echodoc.vim') " Displays function signatures from completions in the command line.
          call dein#add('honza/vim-snippets') " vim-snipmate default snippets (Previously snipmate-snippets)
          call dein#add('Shougo/neosnippet.vim') "The Neosnippet plug-In adds snippet support to Vim. Snippets
          call dein#add('Shougo/neosnippet-snippets') " The standard snippets repository for neosnippet
      "}}}


      "}}}


      if dein#check_install()
          call dein#install()
          let pluginsExist=1
      endif

      call dein#end()
      filetype plugin indent on
      filetype plugin on

      " update vim plugins
      nnoremap <silent> <leader><leader>u :call dein#update()<CR>

      " }}}



  " }}}

  " System Settings  ----------------------------------------------------------{{{

      " source ~/.local.vim
      " Neovim Settings
      set termguicolors
      let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
      set clipboard+=unnamedplus
      set pastetoggle=<f6>
      set nopaste
      autocmd BufWritePre * %s/\s\+$//e
      set noshowmode
      set noswapfile
      filetype on
      set  number
      set relativenumber
      set numberwidth=1
      set tabstop=2
      set shiftwidth=2
      set expandtab
      set conceallevel=0
      set virtualedit=
      set wildmenu
      set laststatus=2
      set wrap linebreak nolist
      set wildmode=full
      set smartcase
      set splitbelow
      set splitright
      set ignorecase
      set mouse =a
      " leader is ,
      let mapleader = ';'
      " set undofile
      " set undodir="$HOME/.VIM_UNDO_FILES"

      try
          set undodir=$HOME/undodir
          set undofile
      catch
      endtry

      " Remember cursor position between vim sessions
      autocmd BufReadPost *
                  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                  \   exe "normal! g'\"" |
                  \ endif
      " center buffer around cursor when opening files
      autocmd BufRead * normal zz
      " set updatetime=500
      set complete=.,w,b,u,t,k

    " Change Wrk Dir in insert mode for file path names, etc...
      autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
      autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

      " Default to search highlighting being turned off.
      set nohlsearch

      "Autoreload files when changed externally
      " set autoread
      " if has('nvim') "Prevent errors when using standard vim
      "   autocmd VimEnter * AutoreadLoop
      " endif

      set formatoptions+=t
      set inccommand=nosplit
      set shortmess=atIc
      set isfname-==
      set nospell
      set breakindent
      set autoindent
      set cindent
      set smartindent


  " }}}

  " Display Settings  ----------------------------------------------------{{{


      " let g:OceanicNext_italic = 1

      syntax on

      "Colorscheme
      set background=dark
      colorscheme base16-porple

      " Remove '|' character fom split window border (note blank space after
      " back slash):
      set fillchars=fold:c

      " List(whitespace) characters and colors
      set listchars=eol:•,space:\|


      " Change split window bar color
      hi VertSplit ctermfg=NONE ctermbg=NONE cterm=NONE
      hi VertSplit guifg=bg guibg=bg gui=NONE
      " hi Normal guibg=NONE
      " hi LineNr guibg=NONE
      nnoremap =otb :hi Normal guibg=NONE<CR>
      nnoremap =otn :hi LineNr guibg=NONE<CR>


      " Change color of Search Highlight
      hi Search cterm=NONE ctermfg=NONE ctermbg=red
      hi Search gui=NONE guifg=bg guibg=fg
      hi CursorLineNr cterm=NONE ctermfg=yellow ctermbg=red
      hi CursorLineNr gui=NONE guifg=yellow guibg=red
      hi Comment cterm=italic

      " Neomake sign colors
      hi NeomakeErrorSign guifg=red
      hi NeomakeWarningSign guifg=yellow
      hi NeomakeErrorSign guibg=bg
      hi NeomakeWarningSign guibg=bg
      hi NeomakeErrorSign ctermfg=red
      hi NeomakeWarningSign ctermfg=yellow


  "}}}

  " System mappings  ----------------------------------------------------------{{{

      "Refresh .vimrc
      nnoremap <f5> :so $MYVIMRC<CR>

      " New File
      nmap <leader><M-n> :new <Space>

      " Open .vimrc (i.e Preferences)
      noremap <leader>, :e ~/.vimrc<CR>

      " No need for ex mode
      nnoremap Q <nop>
      vnoremap // y/<C-R>"<CR>

      " Cycle thru colorschemes
      nmap + :CycleColorNext<CR>
      nmap _ :CycleColorPrev<CR>

      "CheatSheets
      nmap <f2> :e ~/.dotfiles/learnx<CR>

      " Use enter to make new lines
      " nmap <CR> o<Esc>
      " nmap <S-CR> O<Esc>

      " Use <A-o> <Shift><A-o> in order to create new line above  or below in normal mode
      nmap <M-o> o<esc>
      nmap <M-O> O<esc>

      " Use <A-o> <Shift><A-o> in order to create new line above  or below in normal mode
      inoremap <M-o> <cr>
      inoremap <M-O> <esc>O

      " Pressing ;ss will toggle and untoggle spell checking
      nnoremap <leader>ss :setlocal spell!<cr>

      " Save via leader+w
      nnoremap <leader>w :up<cr>

      " press i twice for normal mode
      inoremap ii <esc>

      " Select all
      nnoremap <M-a> ggVG

      " Repeat latest f, t, F or T [count] times
      nnoremap <M-,> ;
      vnoremap <M-,> ;

      " Navigate between display lines
      noremap  <silent> <Up>   gk
      noremap  <silent> <Down> gj
      noremap  <silent> k gk
      noremap  <silent> j gj
      noremap  <silent> <Home> g<Home>
      noremap  <silent> <End>  g<End>
      inoremap <silent> <Home> <C-o>g<Home>
      inoremap <silent> <End>  <C-o>g<End>
      inoremap <M-j> <Down>
      inoremap <M-k> <Up>
      inoremap <M-l> <Right>
      inoremap <M-h> <Left>

      " Page wide find and replace
      nnoremap <leader><leader>s :%s/
      nnoremap <leader><leader>S :s/

      " Shortcut (/) for commencing search and replace
      " cmap / <CR>

      " Add semicolon to end of line
      " Note: Overwritten in languages where semicolon are not applicable
      nmap <M-;> A;<esc>

      " Toggle Neomake globally
      nnoremap <leader>nt :NeomakeToggle<cr>
      " Trigger Neomake linter
      nnoremap <leader>nn :Neomake<CR>

      if exists(":Tabularize")
          nmap <Leader>a= :Tabularize /=<CR>
          vmap <Leader>a= :Tabularize /=<CR>
          nmap <Leader>a: :Tabularize /:\zs<CR>
          vmap <Leader>a: :Tabularize /:\zs<CR>
      endif

      " Vertical Split
      nnoremap <leader>sp :sp<CR>

      " Horizontal Split
      nnoremap <leader>vs :vs<CR>

      " Close All Window Except Current
      nnoremap <leader>on :on<CR>

      " Close Current Window
      nnoremap <leader>cl :clo<CR>

      " Close current buffer
      nnoremap <leader>bd :Sayonara<CR>

      " Update Buffer
      noremap <leader>ct :checktime<CR>

      " Go back to previous opened file in Vim
      noremap <leader>l <C-6>


      " copy current files path to clipboard
      nmap cp :let @+= expand("%") <cr>
      " Neovim terminal mapping
      " terminal 'normal mode'
      tmap <esc> <c-\><c-n><esc><cr>
      " exit insert, dd line, enter insert
      inoremap <c-d> <esc>ddi
      noremap H ^
      noremap L g_
      nnoremap J 5j
      nnoremap K 5k


      "Permit rapid scrolling in visualmode
      vnoremap J 5j
      vnoremap K 5k

      " join/split short cut
      nmap =j :join<CR>
      nmap <CR> i<CR><ESC>


      " " replace f and/or t with one-character Sneak
      " map t <Plug>Sneak_t
      " map F <Plug>Sneak_s
      " map f <Plug>Sneak_S
      " map T <Plug>Sneak_T

      " this is the best, let me tell you why
      " how annoying is that everytime you want to do something in vim
      " you have to do shift-; to get :, can't we just do ;?
      " Plus what does ; do anyways??
      " if you do have a plugin that needs ;, you can just swap the mapping
      " nnoremap : ;
      " " give it a try and you will like it
      "   nnoremap ; :

      " Toggle file type completion
      inoremap <c-f> <c-x><c-f>

      " Copy to osx clipboard
      vnoremap <C-c> "*y<CR>
      " vnoremap y "*y<CR>
      " nnoremap Y "*Y<CR>
      " vnoremap y myy`y
      vnoremap Y myY`y
      let g:multi_cursor_next_key='<C-n>'
      let g:multi_cursor_prev_key='<C-p>'
      let g:multi_cursor_skip_key='<C-x>'
      " let g:multi_cursor_quit_key='<Esc>'

      " Commenting
      " nnoremap =oml :TComment<cr>
      " vnoremap =oml :TComment<cr>
      " vnoremap =omm :TCommentBlock<cr>
      " vnoremap =omi :TCommentInline<cr>
      nmap gcb :TCommentBlock<CR>

      " Yank to y register
      nmap <leader>y "yy


      " Codi interactive REPL
      nmap =oer :Codi!!<CR>

      " Documentation Lookup
      nnoremap <M-K> :Dash<CR>

      " Align blocks of text and keep them selected
      vmap < <gv
      vmap > >gv
      "" nnoremap <leader>d "_d
      " vnoremap <leader>d "_d

      " On highlight search selection
      nnoremap <silent> <esc> :noh<cr>

      nnoremap <leader>e :call <SID>SynStack()<CR>
      function! <SID>SynStack()
          if !exists("*synstack")
              return
          endif
          echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
      endfunc

      function! s:PlaceholderImgTag(size)
        let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
        let [width,height] = split(a:size, 'x')
        execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
      endfunction
      command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)

      tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>
      nmap <leader>t :term<cr>
  "}}}"

  " Linting -------------------------------------------------------------------{{{

      " autocmd! BufWinEnter * NeomakeDisable
      autocmd! BufWritePost * Neomake
      let g:neomake_warning_sign = {'text': '!!'}
      let g:neomake_error_sign = {'text': 'X'}


  "}}}

  " Language Server Settings ------------------------------------------------------------------------{{{

      " NOTE: Run command nvim +PlugInstall +UpdateRemotePlugins +qa in shell to install this plugin. Install corresponding language servers. Restart neovim/vim and language services will be available right away. Happy hacking!
      "
      " Please see INSTALL for complete installation and configuration instructions.

      let g:LanguageClient_autoStart = 1


      let g:LanguageClient_serverCommands = {
          \ 'go': ['go-langserver'],
          \ 'javascript': ['javascript-typescript-stdio'],
          \ 'javascript.jsx': ['javascript-typescript-stdio'],
          \ 'ocaml': ['ocaml-language-server', '--stdio'],
          \ 'python': ['pyls'],
          \ 'python3': ['pyls'],
          \ 'reason': ['ocaml-language-server', '--stdio'],
          \ 'rust': ['rustup', 'run', 'stable', 'rls'],
          \ }


      " Goto definition of identifier under cursor.
      nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>

      " Format current document.
      nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>

      " Rename identifier under cursor
      nnoremap <silent> <leader><leader>rn :call LanguageClient_textDocument_rename()<cr>

      " Show type info (and short doc) of identifier under cursor.
      nnoremap <silent> <leader><leader>e :call LanguageClient_textDocument_hover()<cr>

      nnoremap <silent> <leader><leader>? :call LanguageClient_textDocument_codeAction()<cr>


      augroup LanguageClient_signature
        autocmd!
        autocmd BufEnter * let b:Plugin_LanguageClient_started = 0
        autocmd User LanguageClientStarted let b:Plugin_LanguageClient_started = 1
        autocmd User LanguageClientStopped let b:Plugin_LanguageClient_started = 0
        " autocmd CursorMoved * if b:Plugin_LanguageClient_started | call LanguageClient_textDocument_signatureHelp() | endif
      augroup END

  "}}}

  " Deoplete ------------------------------------------------------------------{{{


      let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
      call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])
      let g:deoplete#enable_ignore_case = 1
      let g:deoplete#enable_smart_case = 1
      let g:deoplete#enable_camel_case = 1
      let g:deoplete#enable_refresh_always = 1
      let g:deoplete#max_abbr_width = 0
      let g:deoplete#max_menu_width = 0

      let g:deoplete#file#enable_buffer_path = 1
      let g:deoplete#auto_complete_start_length = 1
      " let g:deoplete#omni#input_patterns = {}

      " let g:deoplete#enable_debug = 1
      " call deoplete#enable_logging('DEBUG', 'deoplete.log')
      " call deoplete#custom#source('typescript', 'debug_enabled', 1)

      " enable deoplete
      let g:deoplete#enable_at_startup = 1
      let g:echodoc_enable_at_startup=1
      set completeopt+=noselect
      set completeopt-=preview
      autocmd CompleteDone * pclose

      let g:deoplete#file#enable_buffer_path=1

      " Golang
      let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
      let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

      " this is the default, make sure it is not set to "omnifunc" somewhere else in your vimrc
      let g:deoplete#complete_method = "complete"

      let g:deoplete#sources = {}
      let g:deoplete#sources.cpp = ['LanguageClient']
      let g:deoplete#sources.python = ['jedi', 'buffer', 'LanguageClient']
      let g:deoplete#sources.python3 = ['jedi', 'buffer', 'LanguageClient']
      let g:deoplete#sources.rust = ['buffer', 'around', 'LanguageClient']
      let g:deoplete#sources.c = ['buffer', 'around', 'LanguageClient']
      let g:deoplete#sources.ocaml = ['buffer', 'around', 'LanguageClient']
      let g:deoplete#sources.javascript = ['tern', 'buffer', 'around', 'LanguageClient', "neosnippet"]
      let g:deoplete#sources.go = ["go", 'buffer', 'around', 'LanguageClient']
      let g:deoplete#sources.vim = ['vim']



      call deoplete#custom#source('buffer','mark','')
      call deoplete#custom#source('LanguageClient', 'mark', "")
      call deoplete#custom#source('ocaml', 'mark', '')
      call deoplete#custom#source('go', 'mark', '')
      call deoplete#custom#source('tern','mark','')
      call deoplete#custom#source('omni','mark','⌾')
      call deoplete#custom#source('file','mark','file')
      call deoplete#custom#source('jedi','mark','')
      call deoplete#custom#source('typescript','mark','')
      call deoplete#custom#source('neosnippet','mark','')

      call deoplete#custom#source('jedi','rank',999)
      call deoplete#custom#source('go','rank',998)
      call deoplete#custom#source('ocaml', 'rank', 997)
      call deoplete#custom#source('tern','rank',996)
      call deoplete#custom#source('LanguageClient', 'rank', 995)
      call deoplete#custom#source('buffer','rank',994)
      call deoplete#custom#source('neosnippets','rank',993)
      " let g:deoplete#omni_patterns.html = ''

      function! Preview_func()
          if &pvw
              setlocal nonumber norelativenumber
          endif
      endfunction
      autocmd WinEnter * call Preview_func()

      " Deactive deoplete if multicursor active
      function! Multiple_cursors_before()
          let b:deoplete_disable_auto_complete=2
      endfunction
      function! Multiple_cursors_after()
          let b:deoplete_disable_auto_complete=0
      endfunction




  "}}}

  " Javascript ----------------------------------------------------------------{{{

      autocmd FileType javascript set tabstop=4|set shiftwidth=2|set expandtab

      " Node File Execution
      au Filetype javascript nmap =oee :!node %<CR>


    " Autocompletion
    " Mapping for jsdoc Documentation
    autocmd FileType javascript nnoremap <leader>dc :JsDoc<CR>


    " let g:javascript_plugin_flow = 1
    "
    " " To disable flow from running in background by default, set to 0 in your ~/.vimrc, like so:
    let g:flow#enable = 0

    let g:jsx_ext_required = 1
    let g:jsdoc_allow_input_prompt = 1
    let g:jsdoc_input_description = 1
    let g:vim_json_syntax_conceal = 0

    " let g:javascript_conceal_arrow_function       = "⇒"
    " let g:javascript_conceal_function             = "ƒ"
    " let g:javascript_conceal_null                 = "ø"
    " let g:javascript_conceal_this                 = "@"
    " let g:javascript_conceal_return               = "⇚"
    " let g:javascript_conceal_undefined            = "¿"
    " let g:javascript_conceal_NaN                  = "ℕ"
    " let g:javascript_conceal_prototype            = "¶"
    " let g:javascript_conceal_static               = "•"
    " let g:javascript_conceal_super                = "Ω"
    " let g:javascript_conceal_noarg_arrow_function = "🞅"
    " let g:javascript_conceal_underscore_arrow_function = "🞅"

    "Formatting------------------------------{{{

        autocmd FileType javascript set formatprg=prettier-eslint\ --stdin
        autocmd FileType json set formatprg=prettier-eslint\ --stdin


        let g:neoformat_javascript_prettier_eslint = {
              \ 'exe': 'prettier-eslint',
              \ 'args': ['--stdin'],
              \ 'replace': 0,
              \ 'stdin': 1,
              \ 'valid_exit_codes': [0, 23],
              \ 'no_append': 1,
              \ }
        let g:neoformat_enabled_javascript = ['prettier_eslint']
        " let g:neoformat_try_formatprg = 1

        " let g:neoformat_try_formatprg = 1
        let g:neoformat_enabled_json = ['prettier']

    "}}}

    "Linting------------------------------{{{
            " let g:neomake_highlight_columns = 1
            let g:neomake_javascript_enabled_makers = ['eslint']
            let g:neomake_verbose = 1
            " let g:neomake_javascript_eslint_maker = {
            "       \ 'args': ['--no-color', '--format', 'compact'],
            "       \ 'errorformat': '%f: line %l\, col %c\, %m'
            "       \ }
            " let g:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
            " let g:neomake_javascript_eslint_exe=substitute(g:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
    "}}}

    "Prettier --- {{{
        " The command :Prettier by default is synchronous but can also be forced async
        let g:prettier#exec_cmd_async = 1

        " " max line lengh that prettier will wrap on
        " let g:prettier#config#print_width = 80
        "
        " " number of spaces per indentation level
        " let g:prettier#config#tab_width = 2
        "
        " " use tabs over spaces
        " let g:prettier#config#use_tabs = 'false'
        "
        " " print semicolons
        " let g:prettier#config#semi = 'true'
        "
        " " single quotes over double quotes
        " let g:prettier#config#single_quote = 'false'
        "
        " " print spaces between brackets
        " let g:prettier#config#bracket_spacing = 'false'
        "
        " " put > on the last line instead of new line
        " let g:prettier#config#jsx_bracket_same_line = 'false'
        "
        " " none|es5|all
        " let g:prettier#config#trailing_comma = 'none'
        "
        " " flow|babylon|typescript|postcss|json|graphql
        " let g:prettier#config#parser = 'babylon'

        " cli-override|file-override|prefer-file
        let g:prettier#config#config_precedence = 'prefer-file'"
  "}}}

    "Typescript------------------------------ {{{

                let g:nvim_typescript#signature_complete=1
                let g:nvim_typescript#type_info_on_hold=1
                let g:nvim_typescript#max_completion_detail=100
                "
                let g:neomake_typescript_tsc_maker = {
                      \ 'append_file': 0,
                      \ 'args': ['--project', getcwd() . '/tsconfig.json', '--noEmit'],
                      \ 'errorformat':
                      \   '%E%f %#(%l\,%c): error %m,' .
                      \   '%E%f %#(%l\,%c): %m,' .
                      \   '%Eerror %m,' .
                      \   '%C%\s%\+%m'
                      \}

                let g:neomake_typescript_enabled_makers = ['tsc']
                " map <silent> <leader>gd :TSDoc <cr>
                " map <silent> <leader>gt :TSType <cr>
                " map <silent> <leader>@ :Denite -buffer-name=TSDocumentSymbol TSDocumentSymbol <cr>
                " " autocmd FileType typescript setl omnifunc=TSComplete
                let g:nvim_typescript#kind_symbols = {
                      \ 'keyword': 'keyword',
                      \ 'class': '',
                      \ 'interface': 'interface',
                      \ 'script': 'script',
                      \ 'module': '',
                      \ 'local class': 'local class',
                      \ 'type': 'type',
                      \ 'enum': '',
                      \ 'enum member': '',
                      \ 'alias': '',
                      \ 'type parameter': 'type param',
                      \ 'primitive type': 'primitive type',
                      \ 'var': '',
                      \ 'local var': '',
                      \ 'property': '',
                      \ 'let': '',
                      \ 'const': '',
                      \ 'label': 'label',
                      \ 'parameter': 'param',
                      \ 'index': 'index',
                      \ 'function': '',
                      \ 'local function': 'local function',
                      \ 'method': '',
                      \ 'getter': '',
                      \ 'setter': '',
                      \ 'call': 'call',
                      \ 'constructor': '',
                      \}
     "------------ }}}

    "Tern Configuration------------------------------{{{




            autocmd FileType javascript nmap <leader>k :TernDef<CR>
            " Use tern_for_vim.
            let g:tern#command = ["tern"]
            let g:tern#arguments = ["--persistent"]
            let g:tern_show_argument_hints=1

            " " Set bin if you have many installations
            let g:deoplete#sources#ternjs#tern_bin = '/usr/local/bin/tern'
            " let g:deoplete#sources#ternjs#timeout = 1
            "
            " " Whether to include the types of the completions in the result data. Default: 0
            let g:deoplete#sources#ternjs#types = 1
            "
            " " Whether to include the distance (in scopes for variables, in prototypes for
            " " properties) between the completions and the origin position in the result
            " " data. Default: 0
            let g:deoplete#sources#ternjs#depths = 1
            "
            " " Whether to include documentation strings (if found) in the result data.
            " " Default: 0
            let g:deoplete#sources#ternjs#docs = 1
            "
            " " When on, only completions that match the current word at the given point will
            " " be returned. Turn this off to get all results, so that you can filter on the
            " " client side. Default: 1
            "     let g:deoplete#sources#ternjs#filter = 0
            "
            " " Whether to use a case-insensitive compare between the current word and
            " " potential completions. Default 0
            let g:deoplete#sources#ternjs#case_insensitive = 1
            "
            " " When completing a property and no completions are found, Tern will use some
            " " heuristics to try and return some properties anyway. Set this to 0 to
            " " turn that off. Default: 1
            "     let g:deoplete#sources#ternjs#guess = 0
            "
            " " Determines whether the result set will be sorted. Default: 1
            let g:deoplete#sources#ternjs#sort = 0
            "
            " " When disabled, only the text before the given position is considered part of
            " " the word. When enabled (the default), the whole variable name that the cursor
            " " is on will be included. Default: 1
            "     let g:deoplete#sources#ternjs#expand_word_forward = 0
            "
            " " Whether to ignore the properties of Object.prototype unless they have been
            " " spelled out by at least to characters. Default: 1
            "     let g:deoplete#sources#ternjs#omit_object_prototype = 0
            "
            " " Whether to include JavaScript keywords when completing something that is not
            " " a property. Default: 0
            let g:deoplete#sources#ternjs#include_keywords = 1
            "
            " " If completions should be returned when inside a literal. Default: 1
            " let g:deoplete#sources#ternjs#in_literal = 0


            " " Add extra filetypes
            let g:deoplete#sources#ternjs#filetypes = [
                  \ 'js',
                  \ 'jsx',
                  \ 'javascript.jsx',
                  \ 'vue',
                  \ '...'
                  \ ]


    "}}}


  " }}}

  " Reason ------------------------------------------------------------------------{{{

     au Filetype reason nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
     au Filetype reason nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
     au Filetype reason nnoremap <silent> <leader><leader>e :call LanguageClient_textDocument_hover()<cr>

     " Mapping for jsdoc Documentation
     autocmd FileType reason nnoremap <leader>dc :JsDoc<CR>

     " Node File Execution
     au Filetype reason nmap =oee :!ocamlrun %<CR>
     au Filetype ocaml nmap =oee :!ocaml %<CR>

     " Formatting
     autocmd FileType reason set formatprg=refmt\ --Print=ml\ --add-printers
     autocmd FileType ocaml set formatprg=refmt\ -p\ ml\ --parse=ml

     " NeoVim :terminal is not the default, to use it you will have to add this line to your .vimrc:
     let g:slime_target = "neovim"

     let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
     execute "set rtp+=" . g:opamshare . "/merlin/vim"

     " ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
             let s:opam_share_dir = system("opam config var share")
             let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

             let s:opam_configuration = {}

             function! OpamConfOcpIndent()
               execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
             endfunction
             let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

             function! OpamConfOcpIndex()
               execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
             endfunction
             let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

             function! OpamConfMerlin()
               let l:dir = s:opam_share_dir . "/merlin/vim"
               execute "set rtp+=" . l:dir
             endfunction
             let s:opam_configuration['merlin'] = function('OpamConfMerlin')

             let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
             let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
             let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
             for tool in s:opam_packages
               " Respect package order (merlin should be after ocp-index)
               if count(s:opam_available_tools, tool) > 0
                 call s:opam_configuration[tool]()
               endif
             endfor
     " ## end of OPAM user-setup addition for vim / base ## keep this line

  "}}}

  " Go ------------------------------------------------------------------------{{{

      " Go File Execution
      au Filetype go nmap =oee :!go run %<CR>

      " Go Format
      let g:neoformat_enabled_go = ['gofmt']
      let g:neoformat_enabled_go = ['goimports']


  "}}}

  " Python --------------------------------------------------------------------{{{

      let g:python_host_prog = '/usr/local/bin/python'
      let g:python3_host_prog = '/usr/local/bin/python3'
      " let $NVIM_PYTHON_LOG_FILE='nvim-python.log'

      let g:jedi#auto_vim_configuration = 0
      let g:jedi#documentation_command = "<leader>k"

      let g:neomake_python_enabled_makers = ['flake8']


      " Keymappings - python
      "

      autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab

      au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

      au Filetype python nmap <M-;> A:<ESC>
      au Filetype python nmap =oee :!python %<cr>



      " let g:neoformat_enabled_htmldjango = ['html-beautify']

  " }}}

  " MarkDown ------------------------------------------------------------------{{{

      noremap <leader>TM :TableModeToggle<CR>
      let g:table_mode_corner="|"
      let g:neomake_markdown_proselint_maker = {
                  \ 'errorformat': '%W%f:%l:%c: %m',
                  \ 'postprocess': function('neomake#postprocess#GenericLengthPostprocess'),
                  \}
      let g:neomake_markdown_enabled_makers = ['alex', 'proselint']



      let g:instant_markdown_autostart = 0
      let g:instant_markdown_slow = 1
      let vim_markdown_preview_browser='Opera'
      let vim_markdown_preview_github=1
      let vim_markdown_preview_hotkey='<C-p>'

      " iamcco/markdown-preview.vim ---- {{{{

            let g:mkdp_path_to_chrome = "open -a Opera"
            " path to the chrome or the command to open chrome(or other modern browsers)
            " if set, g:mkdp_browserfunc would be ignored

            " let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
            " callback vim function to open browser, the only param is the url to open

            let g:mkdp_auto_start = 0
            " set to 1, the vim will open the preview window once enter the markdown
            " buffer

            let g:mkdp_auto_open = 0
            " set to 1, the vim will auto open preview window when you edit the
            " markdown file

            let g:mkdp_auto_close = 1
            " set to 1, the vim will auto close current preview window when change
            " from markdown buffer to another buffer

            let g:mkdp_refresh_slow = 0
            " set to 1, the vim will just refresh markdown when save the buffer or
            " leave from insert mode, default 0 is auto refresh markdown as you edit or
            " move the cursor

            let g:mkdp_command_for_global = 0
            " set to 1, the MarkdownPreview command can be use for all files,
            " by default it just can be use in markdown file


            nmap <silent> <F8> <Plug>MarkdownPreview
            imap <silent> <F8> <Plug>MarkdownPreview
            nmap <silent> <F9> <Plug>StopMarkdownPreview
            imap <silent> <F9> <Plug>StopMarkdownPreview

      " }}}


  "}}}

  " Java ----------------------------------------------------------------------{{{

      autocmd FileType java setlocal omnifunc=javacomplete#Complete

  "}}}

  " HTML ----------------------------------------------------------------------{{{
      let g:neomake_html_enabled_makers = []
      let g:neoformat_enabled_pug = ['pug-beautifMer']
      let g:neoformat_enabled_html = ['pretter-eslint']

      autocmd FileType html set formatprg=prettier
      " prettier-eslint\ --stdin\ --silent\
      " let g:neoformat_enabled_javascript = ['prettier-eslint']
      autocmd FileType html nnoremap <silent> <leader>f :Neoformat htmlbeautify<CR>
  " }}}

  " CSS -----------------------------------------------------------------------{{{

  "}}}

  " Lua -----------------------------------------------------------------------{{{

  "}}}

  " Fold, gets it's own section  ----------------------------------------------{{{

      function! MyFoldText() "
          let line = getline(v:foldstart)
          let nucolwidth = &fdc + &number * &numberwidth
          let windowwidth = winwidth(0) - nucolwidth - 3
          let foldedlinecount = v:foldend - v:foldstart

          " expand tabs into spaces
          " let onetab = strpart('          ', 0, &tabstop)
          " let line = substitute(line, '\t', onetab, 'g')

          let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
          " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
          " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines   ')
          let fillcharcount = windowwidth - len(line)
          " return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines'
          return line . '…' . repeat(" ",fillcharcount)
      endfunction "


      set foldtext=MyFoldText()

      autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
      autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

      autocmd FileType vim setlocal fdc=1
      set foldlevel=99

      " Space to toggle folds.
      nnoremap <Space> za
      vnoremap <Space> za
      autocmd FileType vim setlocal foldmethod=marker
      autocmd FileType vim setlocal foldlevel=0

      autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99

      autocmd FileType css,scss,json setlocal foldmethod=marker
      autocmd FileType css,scss,json setlocal foldmarker={,}

      autocmd FileType coffee setl foldmethod=indent
      let g:xml_syntax_folding = 1
      autocmd FileType xml setl foldmethod=syntax

      autocmd FileType html setl foldmethod=expr
      autocmd FileType html setl foldexpr=HTMLFolds()

      autocmd FileType javascript,typescript,json setl foldmethod=syntax
      filetype plugin indent on

  " }}}

  " Git -----------------------------------------------------------------------{{{

      " let g:gitgutter_sign_column_always = 1
      " set signcolumn=yes

  " }}}

  " NERDTree ------------------------------------------------------------------{{{

    let g:netrw_liststyle = 3
    let g:netrw_browse_split = 2
    let g:netrw_winsize = 25
    " let g:netrw_banner = 0


      let g:vimfiler_ignore_pattern = ""
      " map <silent> - :VimFiler<CR>
      let g:vimfiler_tree_leaf_icon = ''
      let g:vimfiler_tree_opened_icon = ''
      let g:vimfiler_tree_closed_icon = ''
      let g:vimfiler_file_icon = ''
      let g:vimfiler_marked_file_icon = '*'
      let g:vimfiler_expand_jump_to_first_child = 0
      " let g:vimfiler_as_default_explorer = 1
      call unite#custom#profile('default', 'context', {
                  \'direction': 'botright',
                  \ })
      call vimfiler#custom#profile('default', 'context', {
                  \ 'explorer' : 1,
                  \ 'winwidth' : 35,
                  \ 'winminwidth' : 35,
                  \ 'toggle' : 1,
                  \ 'auto_expand': 0,
                  \ 'parent': 1,
                  \ 'explorer_columns': 'devicons:git',
                  \ 'status' : 0,
                  \ 'safe' : 0,
                  \ 'split' : 1,
                  \ 'hidden': 1,
                  \ 'no_quit' : 1,
                  \ 'force_hide' : 0,
                  \ })
      augroup vfinit
          autocmd FileType vimfiler call s:vimfilerinit()
      augroup END
      function! s:vimfilerinit()
          set nonumber
          set norelativenumber
          nmap <silent><buffer><expr> <CR> vimfiler#smart_cursor_map(
                      \ "\<Plug>(vimfiler_expand_tree)",
                      \ "\<Plug>(vimfiler_edit_file)"
                      \)
          nmap <silent> m :call NerdUnite()<cr>
          nmap <silent> r <Plug>(vimfiler_redraw_screen)
      endf
      " let g:vimfiler_ignore_pattern = '^\%(\.git\|\.DS_Store\)$'
      let g:webdevicons_enable_vimfiler = 0
      let g:vimfiler_no_default_key_mappings=1
      function! NerdUnite() abort
          let marked_files =  vimfiler#get_file(b:vimfiler)
          call unite#start(['nerd'], {'file': marked_files})
      endfunction

      map <silent> - :NERDTreeToggle<CR>
      augroup ntinit
          autocmd FileType nerdtree call s:nerdtreeinit()
      augroup END
      function! s:nerdtreeinit()
          nunmap <buffer> K
          nunmap <buffer> J
      endf
      let NERDTreeShowHidden=1
      let NERDTreeHijackNetrw=1
      let g:NERDTreeWinSize=30
      let g:NERDTreeWinPos = 'right'
      let g:NERDTreeAutoDeleteBuffer=1
      let g:NERDTreeMinimalUI=1
      let g:NERDTreeCascadeSingleChildDir=1
      let g:NERDTreeHeader = 'hello'



  "}}}

  " Sayonara ------------------------------------------------------------------{{{

       " When |:Sayonara| deletes the last active buffer, Vim quits. If this option is
       " set to `1`, you'll get prompted on whether to quit or not.
       " Default: `0`

       let g:sayonara_confirm_quit = 1

  " }}}

  " Nvim terminal -------------------------------------------------------------{{{

      au BufEnter * if &buftype == 'terminal' | :startinsert | endif
      autocmd BufEnter term://* startinsert
      autocmd TermOpen * set bufhidden=hide

  " }}}

  " Vim-Devicons --------------------------------------------------------------{{{

      " let g:WebDevIconsUnicodeDecorateFolderNodes = 1
      " let g:WebDevIconsOS = 'Darwin'

      " add or override individual additional filetypes

      let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
      let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['rei'] = 'λ'
      let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['re'] = 'λ'

      let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
      let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''


      let g:webdevicons_conceal_nerdtree_brackets = 1
      " let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
      " let g:NERDTreeDirArrows = 1
      let g:NERDTreeShowIgnoredStatus = 0
      let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
      let g:NERDTreeDirArrowExpandable = ''
      let g:NERDTreeDirArrowCollapsible = ''
      let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''

  " }}}

  " Code formatting -----------------------------------------------------------{{{

      " ,f to format code, requires formatters: read the docs
      nnoremap <silent> <leader>f :Neoformat<CR>

  " }}}

  " Snippets -----------------------------------------------------------------{{{

        " Enable snipMate compatibility feature.
        " let g:neosnippet#enable_snipmate_compatibility = 1
        " let g:neosnippet#expand_word_boundary = 1
        let g:neosnippet#snippets_directory='~/.config/nvim/repos/github.com/'
        imap <leader><leader><leader> <Plug>(neosnippet_expand_or_jump)
        smap <leader><leader><leader> <Plug>(neosnippet_expand_or_jump)
        xmap <leader><leader><leader> <Plug>(neosnippet_expand_target)

      " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
      imap <expr><Tab>
            \ pumvisible() ?
            \ "\<C-n>" : "\<TAB>"
      imap <expr><S-Tab>
            \ pumvisible() ?
            \ "\<C-p>" : "\<S-Tab>"
      imap <expr><m-j>
            \ neosnippet#expandable_or_jumpable() ?
            \ "\<C-n>" : "\<C-n>"
      smap <expr><m-j> neosnippet#expandable_or_jumpable() ?
          \ "\<C-n>" : "\<ESC>"
      imap <expr><m-k>
            \ neosnippet#expandable_or_jumpable() ?
            \ "\<C-p>" : "\<C-p>"
      smap <expr><m-k> neosnippet#expandable_or_jumpable() ?
            \ "\<C-p>" : "\<ESC>"


      " For conceal markers.
      if has('conceal')
        set conceallevel=2 concealcursor=niv
      endif

    "}}}

  " Emmet customization -------------------------------------------------------{{{


      "  " 1. Expand abbreviation *emmet-expand-abbr
      "   nnoremap <leader>em, <C-y>,
      "
      " " 2. Expand abbreviation *emmet-expand-word* *<C-y>;*
      "   nnoremap <leader>emt <C-y>;
      "
      " " 3. Update tag *emmet-update-tag* *<C-y>u*
      "   nnoremap <leader>emu <c-y>u
      "
      " " 4. Wrap with abbreviation *emmet-wrap-with-abbreviation* *v_<C-y>,*
      "   vnoremap <leader>em, v_<C-y>,


      " Remapping <C-y>, just doesn't cut it.
      function! s:expand_html_tab()
          " try to determine if we're within quotes or tags.
          " if so, assume we're in an emmet fill area.
          let line = getline('.')
          if col('.') < len(line)
              let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
              if len(line) >= 2
                  return "\<C-n>"
              endif
          endif
          " expand anything emmet thinks is expandable.
          if emmet#isExpandable()
              return emmet#expandAbbrIntelligent("\<tab>")
              " return "\<C-y>,"
          endif
          " return a regular tab character
          return "\<tab>"
      endfunction
      let g:user_emmet_expandabbr_key='<Tab>'
      " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

      autocmd FileType html,css,scss imap <silent><buffer><expr><tab> <sid>expand_html_tab()
      let g:user_emmet_mode='a'
      let g:user_emmet_complete_tag = 0
      let g:user_emmet_install_global = 0
      autocmd FileType html,css,scss EmmetInstall
      "}}}

  " Denite --------------------------------------------------------------------{{{

    let g:webdevicons_enable_denite = 0
    let s:menus = {}

    call denite#custom#option('_', {
                \ 'prompt': '❯',
                \ 'winheight': 10,
                \ 'reversed': 1,
                \ 'highlight_matched_char': 'Underlined',
                \ 'highlight_mode_normal': 'CursorLine',
                \ 'updatetime': 1,
                \ 'auto_resize': 1,
                \})
    call denite#custom#option('TSDocumentSymbol', {
                \ 'prompt': ' @' ,
                \ 'reversed': 0,
                \})
    call denite#custom#var('file_rec', 'command',
                \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
    call denite#custom#source('file_rec', 'vars', {
                \ 'command': [
                \ 'ag', '--follow','--nogroup','--hidden', '--column', '-g', '', '--ignore', '.git', '--ignore', '*.png'
                \] })

    call denite#custom#var('grep', 'command', ['ag'])
    call denite#custom#var('grep', 'default_opts',
                \ ['-i', '--vimgrep'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', [])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])


    " nnoremap <silent> <c-p> :Denite file_rec<CR>
    nnoremap <silent> <leader>j :Denite file_rec<CR>
    " nnoremap <silent> <leader>? :Denite  help<CR>
    nnoremap <silent> <leader>th :Denite colorscheme<CR>
    nnoremap <silent> <leader>b :Denite buffer<CR>
    nnoremap <silent> <leader>a :Denite grep:::!<CR>
    nnoremap <silent> <Leader>gh :Denite menu:git<CR>
    call denite#custom#map('insert','<M-j>','<denite:move_to_next_line>','noremap')
    call denite#custom#map('insert','<M-k>','<denite:move_to_previous_line>','noremap')
    call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
                \ [ '.git/', '.ropeproject/', '__pycache__/',
                \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
    call denite#custom#var('menu', 'menus', s:menus)

"}}}

  " Git from denite...ERMERGERD -----------------------------------------------{{{
      let s:menus.git = {
                  \ 'description' : 'Fugitive interface',
                  \}
      let s:menus.git.command_candidates = [
                  \[' git status', 'Gstatus'],
                  \[' git diff', 'Gvdiff'],
                  \[' git commit', 'Gcommit'],
                  \[' git stage/add', 'Gwrite'],
                  \[' git checkout', 'Gread'],
                  \[' git rm', 'Gremove'],
                  \[' git cd', 'Gcd'],
                  \[' git push', 'exe "Git! push " input("remote/branch: ")'],
                  \[' git pull', 'exe "Git! pull " input("remote/branch: ")'],
                  \[' git pull rebase', 'exe "Git! pull --rebase " input("branch: ")'],
                  \[' git checkout branch', 'exe "Git! checkout " input("branch: ")'],
                  \[' git fetch', 'Gfetch'],
                  \[' git merge', 'Gmerge'],
                  \[' git browse', 'Gbrowse'],
                  \[' git head', 'Gedit HEAD^'],
                  \[' git parent', 'edit %:h'],
                  \[' git log commit buffers', 'Glog --'],
                  \[' git log current file', 'Glog -- %'],
                  \[' git log last n commits', 'exe "Glog -" input("num: ")'],
                  \[' git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
                  \[' git log until date', 'exe "Glog --until=" input("day: ")'],
                  \[' git log grep commits',  'exe "Glog --grep= " input("string: ")'],
                  \[' git log pickaxe',  'exe "Glog -S" input("string: ")'],
                  \[' git index', 'exe "Gedit " input("branchname\:filename: ")'],
                  \[' git mv', 'exe "Gmove " input("destination: ")'],
                  \[' git grep',  'exe "Ggrep " input("string: ")'],
                  \[' git prompt', 'exe "Git! " input("command: ")'],
                  \] " Append ' --' after log to get commit info commit buffers
      "}}}

  " Ionic denite source -------------------------------------------------------{{{

    function! Ionic(job) abort
        if a:job ==# "serve"
            enew!
            let filename = 'Ionic:\ '. a:job
            call termopen('ionic '. a:job)
            exe 'file 'filename
            startinsert
        else
            let platform = input('platform: ')
            enew!
            let filename = 'Ionic:\ '. a:job
            call termopen('ionic '. a:job . ' ' . platform)
            exe 'file 'filename
            startinsert
        endif
    endfunction

    " function ExitHandle()
    "   echom self
    " endfunction

    let s:menus.ionic = {
                \ 'description' : 'some rando ionic stuff',
                \}
    let s:menus.ionic.command_candidates = [
                \[' serve', 'call Ionic("serve")' ],
                \[' run device', 'call Ionic("run")'],
                \[' emulate device', 'call Ionic("emulate")'],
                \]
    "}}}

  " Navigate between vim buffers and tmux panels ------------------------------{{{

    let g:tmux_navigator_no_mappings = 1
    nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
    nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
    nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
    nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
    nnoremap <silent> <C-;> :TmuxNavigatePrevious<cr>
    tmap <C-j> <C-\><C-n>:TmuxNavigateDown<cr>
    tmap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
    tmap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
    tmap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
    tmap <C-;> <C-\><C-n>:TmuxNavigatePrevious<cr>



"}}}

  " vim-airline ---------------------------------------------------------------{{{

      if !exists('g:airline_symbols')
          let g:airline_symbols = {}
      endif
      let g:airline#extensions#tabline#enabled = 1
      let g:airline#extensions#mike#enabled = 1
      set hidden
      let g:airline#extensions#tabline#fnamemod = ':t'
      let g:airline#extensions#tabline#buffer_idx_mode = 1
      let g:airline_powerline_fonts = 1
      let g:airline#extensions#neomake#error_symbol='• '
      let g:airline#extensions#neomake#warning_symbol='•  '
      let g:airline_symbols.branch = ''
      let g:airline_theme='serene'
      cnoreabbrev <silent> <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
      tmap <leader>1  <C-\><C-n><Plug>AirlineSelectTab1
      tmap <leader>2  <C-\><C-n><Plug>AirlineSelectTab2
      tmap <leader>3  <C-\><C-n><Plug>AirlineSelectTab3
      tmap <leader>4  <C-\><C-n><Plug>AirlineSelectTab4
      tmap <leader>5  <C-\><C-n><Plug>AirlineSelectTab5
      tmap <leader>6  <C-\><C-n><Plug>AirlineSelectTab6
      tmap <leader>7  <C-\><C-n><Plug>AirlineSelectTab7
      tmap <leader>8  <C-\><C-n><Plug>AirlineSelectTab8
      tmap <leader>9  <C-\><C-n><Plug>AirlineSelectTab9
      nmap <leader>1 <Plug>AirlineSelectTab1
      nmap <leader>2 <Plug>AirlineSelectTab2
      nmap <leader>3 <Plug>AirlineSelectTab3
      nmap <leader>4 <Plug>AirlineSelectTab4
      nmap <leader>5 <Plug>AirlineSelectTab5
      nmap <leader>6 <Plug>AirlineSelectTab6
      nmap <leader>7 <Plug>AirlineSelectTab7
      nmap <leader>8 <Plug>AirlineSelectTab8
      nmap <leader>9 <Plug>AirlineSelectTab9
      let g:airline#extensions#tabline#buffer_idx_format = {
                  \ '0': '0 ',
                  \ '1': '1 ',
                  \ '2': '2 ',
                  \ '3': '3 ',
                  \ '4': '4 ',
                  \ '5': '5 ',
                  \ '6': '6 ',
                  \ '7': '7 ',
                  \ '8': '8 ',
                  \ '9': '9 ',
                  \}




      if !exists('g:airline_symbols')
        let g:airline_symbols = {}
      endif

      " unicode symbols
      let g:airline_left_alt_sep = ''
      let g:airline_left_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_symbols.crypt = '🔒'
      let g:airline_symbols.linenr = '☰'
      let g:airline_symbols.linenr = '␊'
      let g:airline_symbols.linenr = '␤'
      let g:airline_symbols.linenr = '¶'
      let g:airline_symbols.maxlinenr = ''
      let g:airline_symbols.maxlinenr = '㏑'
      let g:airline_symbols.branch = '⎇'
      let g:airline_symbols.paste = 'ρ'
      let g:airline_symbols.paste = 'Þ'
      let g:airline_symbols.paste = '∥'
      let g:airline_symbols.spell = 'Ꞩ'
      let g:airline_symbols.notexists = '∄'
      let g:airline_symbols.whitespace = 'Ξ'

      " powerline symbols
      " let g:airline_left_sep = ''
      " let g:airline_left_alt_sep = ''
      " let g:airline_right_sep = ''
      " let g:airline_right_alt_sep = ''
      " let g:airline_symbols.branch = ''
      " let g:airline_symbols.readonly = ''
      " let g:airline_symbols.linenr = '☰'
      " let g:airline_symbols.maxlinenr = ''

      " old vim-powerline symbols
      " let g:airline_left_sep = '⮀'
      " let g:airline_left_alt_sep = '⮁'
      " let g:airline_right_sep = '⮂'
      " let g:airline_right_alt_sep = '⮃'
      " let g:airline_symbols.branch = '⭠'
      " let g:airline_symbols.readonly = '⭤'
      " let g:airline_symbols.linenr = '⭡'

  "}}}

  " Misc ---------------------------------------------------------------{{{
      " Pomdoro------------------------------{{{

          " Duration of a pomodoro in minutes (default: 25)
          let g:pomodoro_time_work = 25

          " Duration of a break in minutes (default: 5)
          let g:pomodoro_time_slack = 5

          " Log completed pomodoros, 0 = False, 1 = True (default: 0)
          let g:pomodoro_do_log = 0

          " Path to the pomodoro log file (default: /tmp/pomodoro.log)
          let g:pomodoro_log_file = "/tmp/pomodoro.log"


          " Notifications outside vim can be enabled through the option g:pomodoro_notification_cmd. For instance, to play a soundfile after each completed pomodoro or break, add something like
          " let g:pomodoro_notification_cmd = "mpg123 -q ~/desktop/bowl.m4a"
      "}}}

      " Naming Format Function ------------------------------{{{

      "}}}

      " Editor Config Plugin ------------------------------{{{
            let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'
            let g:EditorConfig_core_mode = 'external_command'
      " }}}

  " }}}

