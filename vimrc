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
            " call dein#add('carlitux/deoplete-ternjs',  {'on_ft': 'javascript'}) "deoplete.nvim source for javascript{'build': ' sudo yarn global add tern '}
            " call dein#add('ternjs/tern_for_vim', { 'build': 'yarn install'}) " This is a Vim plugin that provides Tern-based JavaScript editing support.
            call dein#add('HerringtonDarkholme/yats.vim') "YATS: Yet Another TypeScript Syntax
            call dein#add('mxw/vim-jsx') "YATS: Yet Another TypeScript Syntax
            " call dein#add('1995eaton/vim-better-javascript-completion') "An expansion of Vim's current JavaScript syntax file.

        "}}}

        " HTML"------------{{{
            call dein#add('digitaltoad/vim-pug')
            call dein#add('mattn/emmet-vim')
            call dein#add('othree/html5.vim')
            call dein#add('skwp/vim-html-escape')
            call dein#add('vingorius/pug-beautifier') " Pug(formerly jade) beautify CLI
            " call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'}) "A Vim plugin that always highlights the enclosing html/xml tags
        "}}}

        " CSS"------------{{{
        "     call dein#add('hail2u/vim-css3-syntax')
        "     call dein#add('ap/vim-css-color')
        " }}}

        " English"------------{{{
            call dein#add('rhysd/vim-grammarous') "vim-grammarous is a powerful grammar checker for Vim. Simply do :GrammarousCheck
        "}}}

        " Markdown"------------{{{
            call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
            call dein#add('jxnblk/vim-mdx-js') " Vim syntax for mdx, heavily based on vim-jsx
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
          call dein#add('juanchanco/vim-jbuilder') " Syntax highlighting for jbuilder files
          call dein#add('rgrinberg/vim-ocaml') " Vim runtime files for OCaml
          call dein#add('reasonml-editor/vim-reason-plus') " Reason Vim editor integration
          call dein#add("OCamlPro/ocp-indent") "Indentation tool for OCaml, to be used from editors like Emacs and Vim.
          call dein#add("ocaml/merlin") "Context sensitive completion for OCaml in Vim and Emacs
          call dein#add("guns/vim-sexp") " Precision Editing for S-expressions
          " call dein#local('~/.opam/4.04.0/share/merlin/')
          " call dein#add('facebook/reason', {'rtp': 'editorSupport/VimReason'})
        "}}}

        "C/C++"---------------------------------{{{
          call dein#add("vhdirk/vim-cmake") " Vim plugin to make working with CMake a little nicer
        "}}}

        "PlantUML"---------------------------------{{{
          " call dein#add('weirongxu/plantuml-previewer.vim')
          " call dein#add ('scrooloose/vim-slumlord') "Inline previews for Plantuml sequence diagrams. OMG!
          call dein#add("aklt/plantuml-syntax") " Vim syntax file for PlantUML
        "}}}

        " Conquer of Completion -------------------- {{{
            call dein#add('neoclide/coc-neco') "viml completion source for coc.nvim
            call dein#add('neoclide/coc.nvim', {'merge':0, 'build': './install.sh nightly'})
        " }}}

    "}}}

    " BOLT-ON PLUGINS"---------------------------------{{{

        "Add-on Features"-----------{{{
            call dein#add('tmux-plugins/vim-tmux')
            call dein#add('vim-airline/vim-airline')
            call dein#add('Zuckonit/vim-airline-tomato')
            call dein#add('tpope/vim-dadbod') " dadbod.vim: Modern database interface for Vim https://www.vim.org/scripts/script.ph…
            call dein#add('liuchengxu/vista.vim') " 🌵 Viewer & Finder for LSP symbols and tags in Vim http://liuchengxu.org/vista.vim
            call dein#add('paroxayte/vwm.vim') " A layout manager for vim and nvim.
            call dein#add('romgrk/winteract.vim') "An interactive-window mode, where you can resize windows by repeatedly pressing j/k and h/l, amongst other things.
            call dein#add('xarthurx/taskwarrior.vim') "A VIM Interface for TaskWarrior
            call dein#add('antoyo/vim-licenses') " Vim Plugin that Provides Commands to Add Licenses at the Top of the Buffer
            call dein#add('junegunn/vader.vim') " A simple Vimscript test framework
            call dein#add('vim-scripts/dbext.vim') " Provides database access to many dbms (Oracle, Sybase, Microsoft, MySQL, DBI,..) http://www.vim.org/scripts/script.php…
            call dein#add('previm/previm') "Realtime preview by Vim. (Markdown, reStructuredText, textile)
            call dein#add('kassio/neoterm') " Wrapper of some vim/neovim's :terminal functions.
            call dein#add('tkhren/vim-fake') " Vim plugin to provide a generator of random dummy/filler text.
            " call dein#add('rmolin88/pomodoro.vim') " Bring the beauty of the Pomodoro technique to (Neo)Vim
            call dein#add("jpalardy/vim-slime") " SLIME is an Emacs plugin to turn Emacs into a REPL.
            call dein#add('djoshea/vim-autoread') " Have Vim automatically reload a file that has changed externally
            call dein#add('junegunn/fzf') " A command-line fuzzy finder REASON DEPENDENCY
            " call dein#add('autozimu/LanguageClient-neovim',{'build': 'bash install.sh', 'rev': 'next'}) " Language Server Protocol (LSP) support for vim and neovim.
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
            " call dein#add('tyru/open-browser') "Open URI with your favorite browser from your most favorite editor (previm dependency)
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
            call dein#add('junegunn/vim-easy-align') " 🌻 A Vim alignment plugin
            call dein#add('tpope/vim-speeddating') "speeddating.vim: use CTRL-A/CTRL-X to increment dates, times, and more
            call dein#add('wincent/scalpel') "Fast within-file word replacement for Vim
            call dein#add('nicwest/vim-camelsnek') " Convert between camel and snek case (and kebab case)
            call dein#add('tpope/vim-unimpaired') " Pairs of handy bracket mappings
            call dein#add('dhruvasagar/vim-table-mode') "An awesome automatic table creator & formatter allowing one to create neat tables as you type.
            call dein#add('godlygeek/tabular') " Vim script for text filtering and alignment
            call dein#add('AndrewRadev/switch.vim')
            call dein#add('vim-scripts/SyntaxRange') "Define a different filetype syntax on regions of a buffer
        "}}}

        "Default Behavior Modifiers"-----------{{{
            call dein#add('rbgrouleff/bclose.vim') "The BClose Vim plugin for deleting a buffer without closing the window (dependency of francoiscabrol/ranger.vim)
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

        "FileBrowser"-----------{{{
            call dein#add('francoiscabrol/ranger.vim')
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
            call dein#add('gregsexton/gitv') " gitk for Vim.
            call dein#add('airblade/vim-gitgutter')
            call dein#add('junegunn/gv.vim') "A git commit browser. ':GV'
            call dein#add('lambdalisue/gina.vim') "Asynchronously control git repositories in Neovim/Vim 8
        "}}}

        "Themes"-----------{{{
              call dein#add('markvincze/panda-vim')
              call dein#add('TroyFletcher/vim-colors-synthwave')
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

        "SHOUGO ---------------------------------{{{

            "Deoplete stuff"-----------{{{
                call dein#add('Shougo/deoplete.nvim')
                call dein#add('Shougo/deol.nvim')
                if !has('nvim')
                  call dein#add('roxma/nvim-yarp')
                  call dein#add('roxma/vim-hug-neovim-rpc')
                endif
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

      "}}}

    if dein#check_install()"{{{
        call dein#install()
        let pluginsExist=1
    endif

    call dein#end()
    filetype plugin indent on
    filetype plugin on

    " update vim plugins
    nnoremap <silent> <leader><leader>u :call dein#update()<CR>"}}}


  " }}}

  " System Settings  ----------------------------------------------------------{{{

      " source ~/.local.vim
      " Neovim Settings
      " set undodir="$HOME/.VIM_UNDO_FILES"
      " set undofile
      " set updatetime=500
      autocmd BufWritePre * %s/\s\+$//e
      filetype on
      let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
      let mapleader = ';'
      set  number
      set autoindent
      set breakindent
      set cindent
      set clipboard+=unnamedplus
      set complete=.,w,b,u,t,k
      set conceallevel=0
      set expandtab
      set formatoptions+=t
      set hidden
      set ignorecase
      set inccommand=nosplit
      set isfname-==
      set laststatus=2
      set mouse =a
      set nohlsearch
      set nopaste
      set noshowmode
      set nospell
      set noswapfile
      set numberwidth=1
      set pastetoggle=<f6>
      set relativenumber
      set shiftwidth=2
      set shortmess=atIc
      set smartcase
      set smartindent
      set splitbelow
      set splitright
      set tabstop=2
      set termguicolors
      set virtualedit=
      set wildmenu
      set wildmode=full
      set wrap linebreak nolist

      try
          set undodir=$HOME/undodir
          set undofile
      catch
      endtry

      " AUTORELOAD FILES WHEN CHANGED EXTERNALLY
      " set autoread
      " if has('nvim') "Prevent errors when using standard vim
      "   autocmd VimEnter * AutoreadLoop
      " endif

      " Remember cursor position between vim sessions
      autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal! g'\"" |
            \ endif

      " center buffer around cursor when opening files
      autocmd BufRead * normal zz

      " Change Wrk Dir in insert mode for file path names, etc...
      autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
      autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

      " allow edits to crontab file to directly overwrite the file.
      if $VIM_CRONTAB == "true"
        set nobackup
        set nowritebackup
      endif


  " }}}

  " Display Settings  ----------------------------------------------------{{{


      " let g:OceanicNext_italic = 1

      syntax on

      " Remove '|' character fom split window border (note blank space after back slash):
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


      " Change color of Search Highlight ---------------------{{{
            hi Search cterm=NONE ctermfg=NONE ctermbg=red
            hi Search gui=NONE guifg=bg guibg=fg
            hi CursorLineNr cterm=NONE ctermfg=yellow ctermbg=red
            hi CursorLineNr gui=NONE guifg=yellow guibg=red
            hi Comment cterm=italic
      "}}}

      " Colorscheme ---------------------{{{
          set background=dark
              " Default ColorScheme
              colorscheme base16-summerfruit-dark
              " Dynamically set colorscheme to which base16 colorscheme is set in the terminal
              if filereadable(expand("~/.vimrc_background"))
                let base16colorspace=256
                source ~/.vimrc_background
              endif
      "}}}

      " Folding  ----------------------------------------------{{{

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

          autocmd FileType html setl foldmethod=html
          autocmd FileType html setl foldexpr=HTMLFolds()

          autocmd FileType javascript,typescript,json setl foldmethod=syntax
          filetype plugin indent on

      " }}}

      " Terminal  ----------------------------------------------{{{
          :autocmd BufEnter *.png,*.jpg,*gif exec "! ~/.iterm2/imgcat ".expand("%") | :bw
      " }}}

      " Neomake sign colors --------------------{{{
          hi NeomakeErrorSign guifg=red
          hi NeomakeWarningSign guifg=yellow
          hi NeomakeErrorSign guibg=bg
          hi NeomakeWarningSign guibg=bg
          hi NeomakeErrorSign ctermfg=red
          hi NeomakeWarningSign ctermfg=yellow
      "}}}

      " Deoplete ------------------------------------------------------------------{{{


          let g:deoplete#enable_at_startup = 1
          let g:echodoc_enable_at_startup=1
          set completeopt+=noselect
          set completeopt-=preview
          autocmd CompleteDone * pclose
          let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
          call deoplete#custom#source('_', 'matchers', ['matcher_full_fuzzy'])
          let g:deoplete#enable_ignore_case = 1
          let g:deoplete#enable_smart_case = 1
          let g:deoplete#enable_camel_case = 1
          let g:deoplete#enable_refresh_always = 1
          let g:deoplete#max_abbr_width = 0
          let g:deoplete#max_menu_width = 0

          " no delay before completion
          let g:deoplete#auto_complete_delay = 0

          let g:deoplete#file#enable_buffer_path = 1
          let g:deoplete#auto_complete_start_length = 1
          " let g:deoplete#omni#input_patterns = {}

          " let g:deoplete#enable_debug = 1
          " call deoplete#enable_logging('DEBUG', 'deoplete.log')
          " call deoplete#custom#source('typescript', 'debug_enabled', 1)

          " enable deoplete

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


          let g:deoplete#ignore_sources = {}
          let g:deoplete#ignore_sources.ocaml = ['buffer', 'around', 'member', 'tag']
          let g:deoplete#ignore_sources.javascript = ['buffer', 'around', 'member', 'tag']

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

          let ranknumber = 999
          " call deoplete#custom#source('buffer','rank',ranknumber - 1)
          call deoplete#custom#source('jedi','rank',ranknumber - 1)
          call deoplete#custom#source('go','rank',ranknumber - 1)
          call deoplete#custom#source('ocaml', 'rank', ranknumber - 1)
          call deoplete#custom#source('tern','rank',ranknumber - 1)
          call deoplete#custom#source('LanguageClient', 'rank', ranknumber - 1)
          " call deoplete#custom#source('neosnippets','rank',ranknumber - 1)
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

      " Sayonara ------------------------------------------------------------------{{{

           " When |:Sayonara| deletes the last active buffer, Vim quits. If this option is
           " set to `1`, you'll get prompted on whether to quit or not.
           " Default: `0`

           let g:sayonara_confirm_quit = 1

      " }}}

      " winteract ------------------------------{{{
          "  An interactive-window mode, where you can resize windows by repeatedly pressing j/k and h/l, amongst other things.

          " Enter InteractiveWindow mode
          nmap <M-w> :InteractiveWindow<CR>
          nmap <leader>gw :InteractiveWindow<CR>

          let winmap = {}
          let winmap.normal = {
                \ "h": "normal! \<C-w><" , "=": "normal! \<C-w>=" ,
                \ "j": "normal! \<C-w>-" , "f": "normal! \<C-w>_" ,
                \ "k": "normal! \<C-w>+" , "F": "normal! \<C-w>|" ,
                \ "l": "normal! \<C-w>>" , "o": "normal! \<C-w>o" ,
                \
                \ "|": "exe g:winmode.count.'wincmd |'",
                \ "\\": "exe g:winmode.count.'wincmd _'",
                \ "&": "normal! :\<C-r>=&tw\<CR>wincmd |\<CR>" ,
                \
                \ "\<A-h>": "normal! \<C-w>h" ,  "H": "normal! \<C-w>H" ,
                \ "\<A-j>": "normal! \<C-w>j" ,  "J": "normal! \<C-w>J" ,
                \ "\<A-k>": "normal! \<C-w>k" ,  "K": "normal! \<C-w>K" ,
                \ "\<A-l>": "normal! \<C-w>l" ,  "L": "normal! \<C-w>L" ,
                \
                \ "x": "normal! \<C-w>c" , "n": "normal! :bn\<CR>" ,
                \ "c": "normal! \<C-w>c" , "p": "normal! :bp\<CR>" ,
                \ "s": "normal! \<C-w>s" , "\<TAB>": "normal! :bn\<CR>" ,
                \ "v": "normal! \<C-w>v" , "\<S-TAB>": "normal! :bp\<CR>" ,
                \
                \ "w": "normal! \<C-w>w" , "\<A-w>": "normal! \<C-w>p" ,
                \ "W": "normal! \<C-w>W" ,
                \ "q": "normal! :copen\<CR>" ,
                \
                \ "m": "let g:winmode.submode='move'" ,
                \ ":": "let g:winmode.submode='set'" ,
                \ "t": "let g:winmode.submode='tab'" ,
                \
                \ "d": "bdelete" ,
                \ ";": "terminal" ,
                \
                \ "i": "let exitwin=1" ,
                \ "\<ESC>": "let exitwin=1" ,
                \ "\<CR>": "let exitwin=1" ,
                \}

          let winmap.move = {
                \ "h": "normal! \<C-w>H" ,
                \ "j": "normal! \<C-w>J" ,
                \ "k": "normal! \<C-w>K" ,
                \ "l": "normal! \<C-w>L" ,
                \ "x": "normal! \<C-w>x" ,
                \ "r": "normal! \<C-w>r" ,
                \ "\<ESC>": "\" NOP" ,
                \ }

          let winmap.set = {
                \ "w": "exe g:winmode.count.'wincmd |'",
                \ "h": "exe g:winmode.count.'wincmd _'",
                \ "W": "wincmd |",
                \ "H": "wincmd _",
                \ "i": "let resetmode=1" ,
                \ "\<ESC>": "let resetmode=1" ,
                \ }

          let winmap.tab = {
                \ "o": "tab sview %" ,
                \ "e": "tabnew" ,
                \ "x": "tabclose" ,
                \ "n": "tabnext" ,
                \ "p": "tabprevious" ,
                \
                \ "w": "let g:winmode.submode='normal'" ,
                \ "\<ESC>": "let exitwin=1" ,
                \ "i": "let exitwin=1" ,
                \ }

      "}}}

      " Vim-Airline ---------------------------------------------------------------{{{

          " enable tabline
          let g:airline#extensions#tabline#enabled = 1
          " style of tab labels
          let g:airline#extensions#tabline#fnamemod = ':t'
          " show name of buffers in tab
          let g:airline#extensions#tabline#show_splits = 1
          " show a 'buffer' label on right
          let g:airline#extensions#tabline#show_buffers = 1
          " whether 'tabs' & 'buffers' label display at all
          let g:airline#extensions#tabline#show_tab_type = 1
          " whether the number indicator set for the tab is shown
          let g:airline#extensions#tabline#show_tab_nr = 1
          " * configure how numbers are displayed in tab mode.
            " let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
            " let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
            let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number

          let g:airline#extensions#tabline#buffer_idx_mode = 1
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


          cnoreabbrev <silent> <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'


          if !exists('g:airline_symbols')
            let g:airline_symbols = {}
          endif
          let g:airline_powerline_fonts = 1
          let g:airline_theme='serene'
          let g:airline#extensions#neomake#error_symbol='• '
          let g:airline#extensions#neomake#warning_symbol='•  '

          " unicode symbols
          let g:airline_left_alt_sep = ''
          let g:airline_left_sep = ''
          let g:airline_right_alt_sep = ''
          let g:airline_right_sep = ''
          let g:airline_symbols.branch = ''
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

          let g:airline#extensions#coc#enabled = 1
          " * change error symbol:
          let airline#extensions#coc#error_symbol = 'E:'
          " * change warning symbol:
          let airline#extensions#coc#warning_symbol = 'W:'
          " * change error format:
          let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
          " * change warning format:
          let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'

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

      " VWM(Vim Window Manager) ------------------------------{{{

          " Toggles the layout(s) specified by {name}
          nmap <leader><space>1 :VwmToggle dev_panel<CR>
          nmap <leader><space>2 :VwmToggle dev_panelv<CR>
          nmap <leader><space>3 :VwmToggle iterator_panel<CR>

          " Vista attempts to move itself, the sleep prevents a race.
          let s:debug_panel = {
                \  'name': 'debug_panel',
                \  'opnAftr': ['edit'],
                \  'right':
                \  {
                \    'v_sz': 45,
                \    'init': ['NERDTree'],
                \    'bot':
                \    {
                \      'init': ['Vista']
                \    }
                \  }
                \}

          let s:dev_panel = {
                \  'name': 'dev_panel',
                \  'right':
                \  {
                \    'v_sz': 65,
                \    'init': ['term'],
                \    'bot':
                \    {
                \      'init': ['term'],
                \    }
                \  }
                \}

          let s:dev_panelv = {
                \  'name': 'dev_panelv',
                \  'bot':
                \  {
                \    'h_sz': 15,
                \    'init': ['term'],
                \    'right':
                \    {
                \      'init': ['term'],
                \    }
                \  }
                \}

          let s:interator_panel = {
                \  'name': 'iterator_panel',
                \  'right':
                \  {
                \    'v_sz': 65,
                \    'init': ['term'],
                \    'bot':
                \    {
                \      'init': ['term'],
                \      'bot':
                \      {
                \         'init': ['term'],
                \      }
                \    }
                \  }
                \}

          let g:vwm#layouts = [s:dev_panel,s:dev_panelv,s:interator_panel]


          "}}}

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
                " let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
          let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''

      " }}}

  "}}}

  " System mappings  ----------------------------------------------------------{{{

      " TODO: remove whenever possible fixed
      " mapping grave accent(`) to Alt-e do to hardware issue on keyboard
      imap <M-e> `

      "Refresh .vimrc
      nmap <f5> :so $MYVIMRC<CR>

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
      nmap <f2> :e ~/.dotfiles/cheatsheets<CR>

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
      inoremap <M-i> i


      " Select all
      nnoremap <M-a> ggVG

      " Sort all or selection
      nnoremap "sort ggVG:sort<CR>
      vnoremap "sort :sort<CR>

      " Suspend Vim
      nnoremap 1<ESC> :suspend<CR>

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

      " Scalpel
      " nnoremap <leader><leader>s <Plug>Scalpel


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

      " Close All Window Currently Focused
      nnoremap <leader>on :on<CR>

      " Close Current Window
      nnoremap <leader>cl :clo<CR>

      " Close current buffer
      nnoremap <leader>bd :Sayonara<CR>

      " Update Buffer
      noremap <leader>ct :checktime<CR>

      " Go back to previous opened file in Vim
      nnoremap <M-l> :lne<CR>
      nnoremap <M-L>L :lp<CR>

      " Escape leader(semicolon) in INSERT mode
      inoremap <M-;> ;

      " copy current files path to clipboard
      nmap cp :let @+= expand("%") <cr>

      " exit insert, dd line, enter insert
      inoremap <c-d> <esc>ddi
      noremap H ^
      noremap L g_
      nnoremap J 5j
      nnoremap K 5k

      " Replace J functionality for joining lines
      nmap <M-j> :join<CR>

      "Permit rapid scrolling in visualmode
      vnoremap J 5j
      vnoremap K 5k

      " join/split short cut
      nmap =j :join<CR>
      nmap <CR> i<CR><ESC>

      " buffer cycling
      nmap <M-b> :bnext<CR>
      nmap <M-B> :bprevious<CR>

      " create tab
      nnoremap <M-t> :tabnew<CR>

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
      " vnoremap Y myY`y

      let g:multi_cursor_next_key='<C-n>'
      let g:multi_cursor_prev_key='<C-p>'
      let g:multi_cursor_skip_key='<C-x>'
      " let g:multi_cursor_quit_key='<Esc>'

      " Commenting
      nmap gcb :TCommentBlock<CR>

      " Yank to y register
      nmap <leader>y "yy

      " Codi interactive REPL
      nmap =oer :Codi!!<CR>

      " Documentation Lookup
      " nnoremap <M-K> :Dash<CR>

      " Align blocks of text and keep them selected
      vmap < <gv
      vmap > >gv
      "" nnoremap <leader>d "_d
      " vnoremap <leader>d "_d

      " On highlight search selection
      nnoremap <silent> <esc> :noh<cr>

      " Neovim terminal mapping
        " terminal 'normal mode'
        tmap <esc> <c-\><c-n>
        " Disable <ESC> in terminal mode. (Prevents crash)
        tnoremap <ESC> <ESC>

        " Kill terminal-mode while leaving buffer open
        tmap <leader>x <c-\><c-n>:bp! <BAR> bd! #<CR>

        " prevent terminal from jumping to the last line
        tnoremap ii <C-\><C-n>

        " Prompt command for terminal
        nmap <leader>com  :term<Space>
        "Yank visual selection and run on commandline
        nmap <leader>comt vf;Y:term<SPACE><CR>p
        vmap <leader>comt y:term<SPACE><CR>p

      nnoremap <leader>z :call <SID>SynStack()<CR>

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

  "}}}"

  " Languages -------------------------------------------------------------------{{{

      " Language Server Settings (COC) ------------------------------------------------------------------------{{{

          " if hidden is not set, TextEdit might fail.
          set hidden

          " Some servers have issues with backup files, see #649
          set nobackup
          set nowritebackup

          " Better display for messages
          set cmdheight=1

          " Smaller updatetime for CursorHold & CursorHoldI
          set updatetime=300

          " don't give |ins-completion-menu| messages.
          set shortmess+=c

          " always show signcolumns
          set signcolumn=yes

          " Use tab for trigger completion with characters ahead and navigate.
          " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
          inoremap <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()
          inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

          function! s:check_back_space() abort
            let col = col('.') - 1
            return !col || getline('.')[col - 1]  =~# '\s'
          endfunction

          " Use <c-space> to trigger completion.
          inoremap <silent><expr> <c-space> coc#refresh()

          " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
          " Coc only does snippet and additional edit on confirm.
          inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

          " Navigate diagnostics
          nmap <silent> <M-<> <Plug>(coc-diagnostic-prev)
          nmap <silent> <M->> <Plug>(coc-diagnostic-next)
          nmap <silent> <M-i> <Plug>(coc-diagnostic-info)

          " Remap keys for gotos
          nmap <silent> gd <Plug>(coc-definition)
          nmap <silent> gy <Plug>(coc-type-definition)
          nmap <silent> gi <Plug>(coc-implementation)
          nmap <silent> gr <Plug>(coc-references)

          " Use K to show documentation in preview window
          nnoremap <silent> <M-K> :call <SID>show_documentation()<CR>

          function! s:show_documentation()
            if (index(['vim','help'], &filetype) >= 0)
              execute 'h '.expand('<cword>')
            else
              call CocAction('doHover')
            endif
          endfunction

          " Highlight symbol under cursor on CursorHold
          autocmd CursorHold * silent call CocActionAsync('highlight')

          " Remap for rename current word
          nmap <leader>rn <Plug>(coc-rename)

          " Remap for format selected region
          xmap <leader>f  <Plug>(coc-format-selected)
          nmap <leader>f  <Plug>(coc-format-selected)

          augroup mygroup
            autocmd!
            " Setup formatexpr specified filetype(s).
            autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
            " Update signature help on jump placeholder
            autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
          augroup end

          " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
          xmap <leader>a  <Plug>(coc-codeaction-selected)
          nmap <leader>a  <Plug>(coc-codeaction-selected)

          " Remap for do codeAction of current line
          nmap <leader>ac  <Plug>(coc-codeaction)
          " Fix autofix problem of current line
          nmap <leader>qf  <Plug>(coc-fix-current)

          " Setup keymap to open yank list like:
          nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

          " Use `:Format` to format current buffer
          command! -nargs=0 Format :call CocAction('format')
          command! -nargs=0 Format :call CocAction('format')

          " Use `:Fold` to fold current buffer
          command! -nargs=? Fold :call     CocAction('fold', <f-args>)

          " use `:OR` for organize import of current buffer
          command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

          " " Add diagnostic info for https://github.com/itchyny/lightline.vim
          " let g:lightline = {
          "       \ 'colorscheme': 'wombat',
          "       \ 'active': {
          "       \   'left': [ [ 'mode', 'paste' ],
          "       \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
          "       \ },
          "       \ 'component_function': {
          "       \   'cocstatus': 'coc#status'
          "       \ },
          "       \ }
          "


          " Using CocList
          " Show all diagnostics
          nnoremap <silent> <leader><SPACE>a  :<C-u>CocList diagnostics<cr>
          " Manage extensions
          nnoremap <silent> <leader><SPACE>e  :<C-u>CocList extensions<cr>
          " Show commands
          nnoremap <silent> <leader><SPACE>c  :<C-u>CocList commands<cr>
          " Find symbol of current document
          nnoremap <silent> <leader><SPACE>o  :<C-u>CocList outline<cr>
          " Search workspace symbols
          nnoremap <silent> <leader><SPACE>s  :<C-u>CocList -I symbols<cr>
          " Do default action for next item.
          nnoremap <silent> <leader><SPACE>j  :<C-u>CocNext<CR>
          " Do default action for previous item.
          nnoremap <silent> <leader><SPACE>k  :<C-u>CocPrev<CR>
          " Resume latest coc list
          nnoremap <silent> <leader><SPACE>p  :<C-u>CocListResume<CR>

      "}}}

      " Javascript ----------------------------------------------------------------{{{

          autocmd FileType javascript set tabstop=4|set shiftwidth=2|set expandtab

          " Node File Execution
          au Filetype javascript nmap "run :!node %<CR>


          " Autocompletion
          " Mapping for jsdoc Documentation
          autocmd FileType javascript nnoremap <leader>dc :JsDoc<CR>


          " let g:javascript_plugin_flow = 1
          "
          " " To disable flow from running in background by default, set to 0 in your ~/.vimrc, like so:
          let g:flow#enable = 0

          let g:jsx_ext_required = 0
          let g:jsdoc_allow_input_prompt = 1
          let g:jsdoc_input_description = 1
          let g:vim_json_syntax_conceal = 0

          " let g:javascript_conceal_arrow_function       = "➠"
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

          autocmd FileType javascript set formatprg=prettier-eslint\ --stdin\ --parser\ babylon
          autocmd FileType json set formatprg=prettier-eslint\ --stdin


          let g:neoformat_javascript_prettier_eslint = {
                \ 'exe': 'prettier-eslint',
                \ 'args': ['--stdin', '--parser babylon'],
                \ 'replace': 0,
                \ 'stdin': 1,
                \ 'valid_exit_codes': [0, 23],
                \ 'no_append': 1,
                \ }
          let g:neoformat_enabled_javascript = ['prettier_eslint']
          " let g:neoformat_try_formatprg = 1

          " let g:neoformat_try_formatprg = 1
          let g:neoformat_enabled_json = ['prettier']
          let g:neoformat_enabled_yaml = ['prettier']

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

      " Ocaml/Reason ------------------------------------------------------------------------{{{

      " Mapping for jsdoc Documentation
      autocmd FileType reason nnoremap <leader>dc :JsDoc<CR>

      " Node File Execution
      au Filetype reason nnoremap "run :!ocamlrun %<CR>
      au Filetype ocaml nnoremap "run :!ocaml %<CR>

      " Use 'vim-sexp' syntax package on the dune files
      augroup dune_ft
        au!
        autocmd BufNewFile,BufRead dune set syntax=sexp
        " autocmd BufNewFile,BufRead dune set filetype=sexp
      augroup END

      " NeoVim :terminal is not the default, to use it you will have to add this line to your .vimrc:
      let g:slime_target = "neovim"


      " Use the following command to tell Vim to use ocp-indent:
      "" autocmd FileType ocaml source '"$(opam config var prefix)"'/share/typerex/ocp-indent/ocp-indent.vim

      "Merlin Configuration ------------------------------ {{{
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

      "Formatting------------------------------{{{

      " OCaml formating
      autocmd FileType reason set formatprg=bsrefmt\ --print=ml
      let g:neoformat_reason_refmt = {
            \ 'exe': 'bsrefmt',
            \ 'args': ['--print=re', '--parse=re'],
            \ 'replace': 0,
            \ }
      let g:neoformat_enabled_reason = ['refmt']
      "
      autocmd FileType ocaml set formatprg=bsrefmt\ -p\ re\ --parse=ml
      " let g:neoformat_ocaml_refmt = {
      "       \ 'exe': 'bsrefmt',
      "       \ 'args': ['--print=ml', '--parse=ml', '--recoverable'],
      "       \ 'replace': 0,
      "       \ }
      " let g:neoformat_enabled_ocaml = ['refmt']
      " let g:neoformat_try_formatprg = 1

      "}}}

      "}}}

      " Rust------------------------------------------------------------------------{{{
      let g:neomake_rust_enabled_makers = ['rustc']
      let g:neomake_verbose = 1
      let g:neoformat_enabled_rust = ['rustfmt']

      au Filetype rust nmap "run :!cargo run %<cr>
      au Filetype rust nmap `clean :!cargo clean %<cr>
      au Filetype rust nmap `build :!cargo build %<cr>
      au Filetype rust nmap `test :!cargo test %<cr>
      " }}}

      " C/C++ --------------------------------------------------------------------{{{

      au Filetype cpp nmap "run :mak!<CR><CR>
      au Filetype python nmap <M-;> A;<ESC>

      " Use an absolute configuration path if you want system-wide settings
      " let g:LanguageClient_loadSettings = 1
      " let g:LanguageClient_settingsPath = '~/AMC/.config/nvim/settings.json'
      " https://github.com/autozimu/LanguageClient-neovim/issues/379 LSP snippet is not supported
      let g:LanguageClient_hasSnippetSupport = 0

      " Formatting -- {{{
      fu! C_init()
        setl formatexpr=LanguageClient#textDocument_rangeFormatting()
      endf
      au FileType c,cpp,cuda,objc :call C_init()
      " }}}

      " textDocument/documentHighlight -- {{{

      " augroup LanguageClient_config
      "   au!
      "   au BufEnter * let b:Plugin_LanguageClient_started = 0
      "   au User LanguageClientStarted setl signcolumn=yes
      "   au User LanguageClientStarted let b:Plugin_LanguageClient_started = 1
      "   au User LanguageClientStopped setl signcolumn=auto
      "   au User LanguageClientStopped let b:Plugin_LanguageClient_stopped = 0
      "   au CursorMoved * if b:Plugin_LanguageClient_started | sil call LanguageClient#textDocument_documentHighlight() | endif
      " augroup END

      " }}}

      " $ccls/navigate | Semantic navigation. Roughly, -- {{{

      " "D" => first child declaration "L" => previous declaration "R" => next declaration "U" => parent declaration
      au Filetype cpp nn <silent> xh :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'L'})<cr>
      au Filetype cpp nn <silent> xj :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'D'})<cr>
      au Filetype cpp nn <silent> xk :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'U'})<cr>
      au Filetype cpp nn <silent> xl :call LanguageClient#findLocations({'method':'$ccls/navigate','direction':'R'})<cr>

      " }}}

      " Cross reference extensions --{{{

      " bases
      au Filetype cpp nn <silent> xb :call LanguageClient#findLocations({'method':'$ccls/inheritance'})<cr>
      " bases of up to 3 levels
      au Filetype cpp nn <silent> xB :call LanguageClient#findLocations({'method':'$ccls/inheritance','levels':3})<cr>
      " derived
      au Filetype cpp nn <silent> xd :call LanguageClient#findLocations({'method':'$ccls/inheritance','derived':v:true})<cr>
      " derived of up to 3 levels
      au Filetype cpp nn <silent> xD :call LanguageClient#findLocations({'method':'$ccls/inheritance','derived':v:true,'levels':3})<cr>

      " caller
      au Filetype cpp nn <silent> xc :call LanguageClient#findLocations({'method':'$ccls/call'})<cr>
      " callee
      au Filetype cpp nn <silent> xC :call LanguageClient#findLocations({'method':'$ccls/call','callee':v:true})<cr>

      " $ccls/member
      " nested classes / types in a namespace
      au Filetype cpp nn <silent> xs :call LanguageClient#findLocations({'method':'$ccls/member','kind':2})<cr>
      " member functions / functions in a namespace
      au Filetype cpp nn <silent> xf :call LanguageClient#findLocations({'method':'$ccls/member','kind':3})<cr>
      " member variables / variables in a namespace
      au Filetype cpp nn <silent> xm :call LanguageClient#findLocations({'method':'$ccls/member'})<cr>

      au Filetype cpp nn xx x
      " }}}

      " }}}

      " Go ------------------------------------------------------------------------{{{

      " Go File Execution
      au Filetype go nmap "run :!go run %<CR>

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

      " au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=html

      au Filetype python nmap <M-;> A:<ESC>
      au Filetype python nmap "run :!python %<cr>



      " let g:neoformat_enabled_htmldjango = ['html-beautify']

      " }}}

      " Bash --------------------------------------------------------------------{{{


      function! ShellFold()
        let currentline = getline(v:lnum)
        if match(currentline, '}') >= 0
          return "<1"
        endif
        if match(currentline, 'function') >= 0
          return ">1"
        endif
        if match(currentine, '') >=0
          return "1"
        endif
        return "1"
      endfunction
      au FileType sh set foldexpr=ShellFold()|set foldmethod=expr|set foldcolumn=3

      " Fold bash file according to above defined fold function
      " au FileType sh set


      autocmd FileType sh set tabstop=2|set shiftwidth=2|set expandtab

      "}}}

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


      " Markdown preview macro using the 'Typora' (on mac) when installed
      au Filetype markdown nmap "run :!open -a Typora "%"

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

      " preview/previm - - - - - - - - - - - - - - - - - - - -  {{{
      " open by Firefow Developer Edition
      " au Filetype markdown nmap "run :PrevimOpen
      " let g:previm_open_cmd = 'open -a Firefox\ Developer\ Edition'
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
      autocmd FileType html set foldmethod=indent
      " prettier-eslint\ --stdin\ --silent\
      " let g:neoformat_enabled_javascript = ['prettier-eslint']
      " autocmd FileType html nnoremap <silent> <leader>f :Neoformat htmlbeautify<CR>
      " }}}

      " CSS -----------------------------------------------------------------------{{{

      "}}}

      " Lua -----------------------------------------------------------------------{{{

      "}}}

      " VIM -----------------------------------------------------------------------{{{

            let g:markdown_fenced_languages = [
                  \ 'vim',
                  \ 'help'
                  \]

      "}}}

  "}}}

  " FileBrowser ------------------------------------------------------------------{{{

    "Nerd Tree --------------------------------------------------{{{
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

    " Ranger -------------------------------------------------- {{{

      let g:NERDTreeHijackNetrw = 0 " add this line if you use NERDTree
      let g:ranger_replace_netrw = 1 " open ranger when vim open a directory
      let g:ranger_map_keys = 0 " To disable the default key mapping
      let g:ranger_command_override = 'ranger --cmd "set show_hidden=true"'

      nmap - :Ranger<CR>





     "}}}


  "}}}

  " Formatting -----------------------------------------------------------{{{

      " ;f to format code, requires formatters: read the docs
      nnoremap  <leader>f :Neoformat<CR>

      " Linting -------------------------------------------------------------------{{{

          " autocmd! BufWinEnter * NeomakeDisable
          autocmd! BufWritePost * Neomake
          let g:neomake_warning_sign = {'text': '!!'}
          let g:neomake_error_sign = {'text': 'X'}

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

      " VIM easy align ------------------------------{{{
          " Start interactive EasyAlign in visual mode (e.g. vipga)
          vmap ga <Plug>(EasyAlign)

          " Start interactive EasyAlign for a motion/text object (e.g. gaip)
          nmap ga <Plug>(EasyAlign)
      "}}}

  " }}}

  " Productivity Tools ---------------------------------------------------{{{


      " DBext -----------------------------------------------------------------{{{

          let g:dbext_default_profile_Default       = 'type=PGSQL:user=AMC:hostname=corax.dev:port=5432'
          let g:dbext_default_profile_SQLite         = 'type=SQLITE:SQLITE_bin=/usr/bin/sqlite3:sqlite.db'
          " let g:dbext_default_profile_ORA         = 'type=ORA:user=scott:passwd=tiger'
          " let g:dbext_default_profile_mySQLServer = 'type=SQLSRV:integratedlogin=1:srvname=mySrv:dbname=myDB'

        "}}}

      " Git -----------------------------------------------------------------------{{{

          " let g:gitgutter_sign_column_always = 1
          " set signcolumn=yes

          " Shortcut for fugitive diffing
          nnoremap gid :Gvdiff<CR>
          " Shortcut for fugitive commiting
          nnoremap gic :terminal git-cz<CR>
          " Shortcut for fugitive staging
          nnoremap gis :Gstatus<CR>
          " Shortcut for fugitive pushing
          nnoremap gip :Gpush<Space>

          "easygit--------------- {{{
            let g:easygit_enable_command = 1
          "}}}

      " }}}

      " Snippets -----------------------------------------------------------------{{{

            " Enable snipMate compatibility feature.
            let g:neosnippet#enable_snipmate_compatibility = 1
            let g:neosnippet#expand_word_boundary = 1
            let g:neosnippet#snippets_directory='~/.config/snippets'
            imap <leader><space> <Plug>(neosnippet_expand_or_jump)
            smap <leader><space> <Plug>(neosnippet_expand_or_jump)
            xmap <leader><space> <Plug>(neosnippet_expand_target)

            " For conceal markers.
            if has('conceal')
              set conceallevel=2 concealcursor=niv
            endif


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


        "}}}

      " Vim-Fake -----------------------------------------------------------------{{{

           "" Choose a random element from a list
           call fake#define('sex', 'fake#choice(["male", "female"])')

           "" Get a name of male or female
           call fake#define('name', 'fake#int(1) ? fake#gen("male_name")'
                 \ . ' : fake#gen("female_name")')

           "" Get a full name
           call fake#define('fullname', 'fake#gen("name") . " " . fake#gen("surname")')

           "" Get a nonsense text like Lorem ipsum
           call fake#define('sentense', 'fake#capitalize('
                 \ . 'join(map(range(fake#int(3,15)),"fake#gen(\"nonsense\")"))'
                 \ . ' . fake#chars(1,"..............!?"))')

           call fake#define('paragraph', 'join(map(range(fake#int(3,10)),'
                 \ . '"fake#gen(\"sentense\")"))')

           "" Alias
           call fake#define('lipsum', 'fake#gen("paragraph")')

           "" Get an age weighted by generation distribution
           call fake#define('age', 'float2nr(floor(110 * fake#betapdf(1.0, 1.45)))')

           "" Get a domain (its occurrence is ordered by number of websites)
           call fake#define('gtld', 'fake#get(fake#load("gtld"),'
                 \ . 'fake#betapdf(0.2, 3.0))')

           call fake#define('email', 'tolower(substitute(printf("%s@%s.%s",'
                 \ . 'fake#gen("name"),'
                 \ . 'fake#gen("surname"),'
                 \ . 'fake#gen("gtld")), "\\s", "-", "g"))')


        "}}}

      " Denite --------------------------------------------------------------------{{{

        let g:webdevicons_enable_denite = 0

        " Denite keybinding
        autocmd FileType denite call s:denite_my_settings()
        function! s:denite_my_settings() abort
          nnoremap <silent><buffer><expr> <CR>
                \ denite#do_map('do_action')
          " nnoremap <silent><buffer><expr> d
          "       \ denite#do_map('do_action', 'delete')
          nnoremap <silent><buffer><expr> p
                \ denite#do_map('do_action', 'preview')
          nnoremap <silent><buffer><expr> q
                \ denite#do_map('quit')
          nnoremap <silent><buffer><expr> i
                \ denite#do_map('open_filter_buffer')
          nnoremap <silent><buffer><expr> <Space>
                \ denite#do_map('toggle_select').'j'
        endfunction

        " File search settings
        call denite#custom#var('file/rec', 'command',
              \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
        call denite#custom#source('file/rec', 'vars', {
              \ 'command': [
              \ 'ag', '--follow','--nogroup','--hidden', '--column', '-g', '', '--ignore', '.git', '--ignore', '*.png'
              \] })
        " Change sorters.
        call denite#custom#source(
        \ 'file/rec', 'sorters', ['sorter/sublime'])


        " Menu Display Configuration
        call denite#custom#option('_', {
                    \ 'prompt': '❯',
                    \ 'winheight': 10,
                    \ 'reversed': 1,
                    \ 'highlight_matched_char': 'Underlined',
                    \ 'highlight_mode_normal': 'CursorLine',
                    \ 'updatetime': 1,
                    \ 'auto_resize': 1,
                    \})

        " Files ignored by during searches
        call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
                    \ [ '.git/', '.ropeproject/', '__pycache__/',
                    \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

        " Denite grep setting
        call denite#custom#var('grep', 'command', ['ag'])
        call denite#custom#var('grep', 'default_opts',
                    \ ['-i', '--vimgrep'])
        call denite#custom#var('grep', 'recursive_opts', [])
        call denite#custom#var('grep', 'pattern_opt', [])
        call denite#custom#var('grep', 'separator', ['--'])
        call denite#custom#var('grep', 'final_opts', [])

        " Move down in Denite menus
        call denite#custom#map('insert','<M-j>','<denite:move_to_next_line>','noremap')
        " Move up in Denite menus
        call denite#custom#map('insert','<M-k>','<denite:move_to_previous_line>','noremap')

        let s:menus = {}
        call denite#custom#var('menu', 'menus', s:menus)

        " menu filters
        nnoremap <silent> <leader>j :Denite file/rec<CR>i
        nnoremap <silent> <leader>? :Denite  help<CR>
        nnoremap <silent> <leader>th :Denite colorscheme<CR>
        nnoremap <silent> <leader><leader>b :Denite buffer<CR>
        nnoremap <silent> <leader>a :Denite grep:::!<CR>
        nnoremap <silent> <Leader>gh :Denite menu:git<CR>

        " Denite:Git -----------------------------------------------{{{

            let s:menus.git = {
                  \ 'description' : 'Fugitive interface',
                  \}
            let s:menus.git.command_candidates = [
                  \[' git amend', 'Gcommit --amend'],
                  \[' git browse', 'Gbrowse'],
                  \[' git cd', 'Gcd'],
                  \[' git checkout branch', 'exe "Git! checkout " input("branch: ")'],
                  \[' git checkout', 'Gread'],
                  \[' git commit', 'exe "terminal git-cz " '],
                  \[' git diff', 'Gdiff'],
                  \[' git fetch', 'Gfetch'],
                  \[' git grep',  'exe "Ggrep " input("string: ")'],
                  \[' git head', 'Gedit HEAD^'],
                  \[' git index', 'exe "Gedit " input("branchname\:filename: ")'],
                  \[' git log commit buffers', 'Glog --'],
                  \[' git log current file', 'Glog -- %'],
                  \[' git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
                  \[' git log grep commits',  'exe "Glog --grep= " input("string: ")'],
                  \[' git log last n commits', 'exe "Glog -" input("num: ")'],
                  \[' git log pickaxe',  'exe "Glog -S" input("string: ")'],
                  \[' git log until date', 'exe "Glog --until=" input("day: ")'],
                  \[' git merge', 'Gmerge'],
                  \[' git mv', 'exe "Gmove " input("destination: ")'],
                  \[' git parent', 'edit %:h'],
                  \[' git prompt', 'exe "Git! " input("command: ")'],
                  \[' git pull rebase', 'exe "Git! pull --rebase " input("branch: ")'],
                  \[' git pull', 'exe "Git! pull " input("remote/branch: ")'],
                  \[' git push', 'exe "Git! push " input("remote/branch: ")'],
                  \[' git rm', 'Gremove'],
                  \[' git stage/add', 'Gwrite'],
                  \[' git status', 'Gstatus'],
                  \[' git vdiff', 'Gvdiff'],
                  \] " Append ' --' after log to get commit info commit buffers
        "}}}

    "}}}

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

      " Editor Config Plugin ------------------------------{{{
            " let g:EditorConfig_exec_path = '/usr/local/bin/editorconfig'
            " let g:EditorConfig_core_mode = 'external_command'
      " }}}

      " Vista [symbols viewer] ------------------------------{{{

            " Toggle vista window
            nnoremap <leader>gv :Vista!!<CR>



            " " How each level is indented and what to prepend.
            " " This could make the display more compact or more spacious.
            " " e.g., more compact: ["▸ ", ""]
            " let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
            "
            " " Executive used when opening vista sidebar without specifying it.
            " " See all the avaliable executives via `:echo g:vista#executives`.
            " let g:vista_default_executive = 'ctags'
            "
            " " Set the executive for some filetypes explicitly. Use the explicit executive
            " " instead of the default one for these filetypes when using `:Vista` without
            " " specifying the executive.
            " let g:vista_executive_for = {
            "   \ 'cpp': 'vim_lsp',
            "   \ 'php': 'vim_lsp',
            "   \ }
            "
            " " Declare the command including the executable and options used to generate ctags output
            " " for some certain filetypes.The file path will be appened to your custom command.
            " " For example:
            " let g:vista_ctags_cmd = {
            "       \ 'haskell': 'hasktags -x -o - -c',
            "       \ }
            "
            " " To enable fzf's preview window set g:vista_fzf_preview.
            " " The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
            " " For example:
            " let g:vista_fzf_preview = ['right:50%']
            "
            " " Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
            " let g:vista#renderer#enable_icon = 1
            "
            " " The default icons can't be suitable for all the filetypes, you can extend it as you wish.
            " let g:vista#renderer#icons = {
            " \   "function": "\uf794",
            " \   "variable": "\uf71b",
            " \  }

            " Move to the vista window when it is opened. Set this option to `0` to stay in current windown when opening the vista sidebar.

            let g:vista_stay_on_open = 0

            " Fall back to other executives if the specified one gives empty data.  This is useful if you want to switch to `ctags` when LSP is not usable.  By default it's all the provided executives excluding the tried one.

            let g:vista_finder_alternative_executives = ['coc']


            " Set the executive for some filetypes explicitly, which is useful for setting `ctags` as the default executive, whereas you prefer to use LSP for some filetypes you ensured the LSP functionality is good. The rationality is the LSP server needs to be installed explicitly and people normally only install a few frequently used ones, but ctags supports much more languages by default.

            let g:vista_default_executive = 'lcn'

            let g:vista_executive_for = {
                  \ 'cpp': 'ctags',
                  \ 'php': 'coc',
                  \ 'markdown': 'toc',
                  \ 'ocaml': 'coc',
                  \ 'reason': 'coc',
                  \ 'python': 'coc',
                  \ 'rust': 'coc',
                  \ 'go': 'coc',
                  \ 'javascript.jsx': 'coc',
                  \ 'typescript': 'coc',
                  \ 'vim': 'ctags',
                  \ }

      "}}}

      " Task-Warrior Plugin ------------------------------{{{
          nmap <leader>tk :TW<CR>
          nmap <leader>task :TW

      "}}}

      " Vim-Licenses ------------------------------{{{

            " There are currently more than 10 licenses, and you can add your own. To do so, copy the license text in ~/.vim/licenses/licenseFile.txt. Then add a command for this license:
            "
            " command! License call InsertLicense('licenseFile')
            "
            " If your license file contains a <year> tag, it will be automatically replaced by the current year.
            "
            " The <name of copyright holder> tag will be automatically replaced by the content of the g:licenses_copyright_holders_name variable (if not empty), so that the copyright holder's name will be automatically added to the license. Thus, you may want to add such a line to you .vimrc:

            """" let g:licenses_authors_name = 'Last Name, First Name <my@email.com>'
            let g:licenses_copyright_holders_name = ' Corvi, Alistar <inquiry@corvi.xyz>'

            " And the <name of author> tag will be automatically replaced by the the content of the g:licenses_authors_name variable (if not empty), so that your name will be automatically added to the license. Thus, you may want to add such a line to you .vimrc:

            """" let g:licenses_authors_name = 'Last Name, First Name <my@email.com>'
            let g:licenses_authors_name = ' Corvi, Alistar <inquiry@corvi.xyz>'

            " If you do not want this plugin to create all these commands, you may restrict to the licenses you want by using the g:licenses_default_commands option. For instance, to have this plugin add only a command for the GNU GPL, Mit and Foobar licenses, use this:

            " let g:licenses_default_commands = ['gpl', 'mit', 'foobar']
      "}}}


  " }}}

  " Navigation ------------------------------{{{

      " Buffer and Tmux Panel Navigation ------------------------------{{{

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
          imap <C-j> <C-\><C-n>:TmuxNavigateDown<cr>
          imap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
          imap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
          imap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
          imap <C-;> <C-\><C-n>:TmuxNavigatePrevious<cr>

    "}}}

      " Movement------------------------------ {{{

          "Clever-F------------------------------{{{
              let g:clever_f_smart_case = 1
          "}}}


      " }}}


"}}}

  " Misc ---------------------------------------------------------------{{{

      au BufRead,BufNewFile,FileWritePre todo   syntax match StrikeoutMatch /.*;;$/
      hi def  StrikeoutColor   ctermbg=darkblue ctermfg=black    guibg=grey guifg=black
      hi link StrikeoutMatch StrikeoutColor

  " }}}

