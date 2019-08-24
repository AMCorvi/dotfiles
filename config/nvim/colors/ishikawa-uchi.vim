" Vim color file
" Converted from Textmate theme Uchikoma-Ishikawa using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=light
highlight clear

if exists("syntax_on")
  syntax reset
endif

if v:version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists('g:syntax_on')
        syntax reset
    endif
endif

let g:colors_name = "Uchikoma-Ishikawa"

let s:gui_running = has('gui_running')

hi Cursor ctermfg=251 ctermbg=16 cterm=inverse guifg=#c4cbcb guibg=#091217 gui=inverse
hi Visual ctermfg=NONE ctermbg=59 cterm=NONE guifg=#c4cbcb guibg=#223c3f gui=NONE
hi CursorLine ctermfg=NONE ctermbg=145 cterm=NONE guifg=NONE guibg=#b4bdbd gui=inverse
hi CursorColumn ctermfg=NONE ctermbg=145 cterm=NONE guifg=NONE guibg=#b4bdbd gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=145 cterm=NONE guifg=NONE guibg=#b4bdbd gui=NONE
hi LineNr ctermfg=66 ctermbg=145 cterm=NONE guifg=#738485 guibg=#091217 gui=NONE
hi CursorLineNr ctermfg=66 ctermbg=145 cterm=NONE guifg=#b22222 guibg=#c4cbcb  gui=bold,underline
hi VertSplit ctermfg=109 ctermbg=109 cterm=NONE guifg=#95a2a2 guibg=#95a2a2 gui=NONE
hi MatchParen ctermfg=60 ctermbg=NONE cterm=underline guifg=#50608a guibg=NONE gui=underline
hi StatusLine ctermfg=23 ctermbg=109 cterm=bold guifg=#223c3f guibg=#95a2a2 gui=bold
hi StatusLineNC ctermfg=23 ctermbg=109 cterm=NONE guifg=#223c3f guibg=#95a2a2 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#49483e gui=NONE
hi IncSearch ctermfg=251 ctermbg=251 cterm=NONE guifg=#c4cbcb guibg=#c4c6cb gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=213 ctermbg=NONE cterm=NONE guifg=#ff81f6 guibg=NONE gui=NONE
hi Folded ctermfg=246 ctermbg=251 cterm=NONE guifg=#919294 guibg=#c4cbcb gui=NONE

hi Normal ctermfg=23 ctermbg=251 cterm=NONE guifg=#223c3f guibg=#c4cbcb gui=NONE
hi Boolean ctermfg=213 ctermbg=NONE cterm=NONE guifg=#ff81f6 guibg=NONE gui=NONE
hi Character ctermfg=213 ctermbg=NONE cterm=NONE guifg=#ff81f6 guibg=NONE gui=NONE
hi Comment ctermfg=246 ctermbg=NONE cterm=NONE guifg=#919294 guibg=NONE gui=italic
hi Conditional ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi DiffAdd ctermfg=23 ctermbg=113 cterm=bold guifg=#223c3f guibg=#96dd52 gui=bold
hi DiffDelete ctermfg=167 ctermbg=NONE cterm=NONE guifg=#e64949 guibg=NONE gui=NONE
hi DiffChange ctermfg=23 ctermbg=110 cterm=NONE guifg=#223c3f guibg=#9bb5cd gui=NONE
hi DiffText ctermfg=23 ctermbg=74 cterm=bold guifg=#223c3f guibg=#729fcf gui=bold
hi ErrorMsg ctermfg=17 ctermbg=143 cterm=NONE guifg=#121740 guibg=#c2ab72 gui=NONE
hi WarningMsg ctermfg=17 ctermbg=143 cterm=NONE guifg=#121740 guibg=#c2ab72 gui=NONE
hi Float ctermfg=213 ctermbg=NONE cterm=NONE guifg=#b22222 guibg=#091217 gui=NONE
hi Function ctermfg=17 ctermbg=NONE cterm=bold guifg=#22273f guibg=NONE gui=bold
hi Identifier ctermfg=30 ctermbg=NONE cterm=underline guifg=#297e87 guibg=NONE gui=underline,italic
hi Keyword ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi Label ctermfg=251 ctermbg=16 cterm=NONE guifg=#c4c6cb guibg=#0a0917 gui=NONE
hi NonText ctermfg=59 ctermbg=145 cterm=NONE guifg=#3b3a32 guibg=#bcc4c4 gui=NONE
hi Number ctermfg=213 ctermbg=NONE cterm=NONE guifg=#b22222 guibg=#091217 gui=NONE
hi Operator ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi PreProc ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi Special ctermfg=23 ctermbg=NONE cterm=NONE guifg=#223c3f guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=145 cterm=NONE guifg=#3b3a32 guibg=#b4bdbd gui=NONE
hi Statement ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi StorageClass ctermfg=30 ctermbg=NONE cterm=underline guifg=#297e87 guibg=NONE gui=underline,italic
hi String ctermfg=251 ctermbg=16 cterm=NONE guifg=#c4c6cb guibg=#0a0917 gui=NONE
hi Tag ctermfg=94 ctermbg=NONE cterm=bold guifg=#785b12 guibg=NONE gui=bold
hi Title ctermfg=23 ctermbg=NONE cterm=bold guifg=#223c3f guibg=NONE gui=bold
hi Todo ctermfg=246 ctermbg=NONE cterm=inverse,bold guifg=#919294 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi rubyFunction ctermfg=17 ctermbg=NONE cterm=bold guifg=#22273f guibg=NONE gui=bold
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=213 ctermbg=NONE cterm=NONE guifg=#ff81f6 guibg=NONE gui=NONE
hi rubyConstant ctermfg=60 ctermbg=NONE cterm=NONE guifg=#424a7a guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=251 ctermbg=16 cterm=NONE guifg=#c4c6cb guibg=#0a0917 gui=NONE
hi rubyBlockParameter ctermfg=106 ctermbg=NONE cterm=NONE guifg=#94bd17 guibg=NONE gui=italic
hi rubyInstanceVariable ctermfg=61 ctermbg=NONE cterm=NONE guifg=#5c69ad guibg=NONE gui=NONE
hi rubyInclude ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=61 ctermbg=NONE cterm=NONE guifg=#5c69ad guibg=NONE gui=NONE
hi rubyRegexp ctermfg=251 ctermbg=16 cterm=NONE guifg=#c4c6cb guibg=#0a0917 gui=NONE
hi rubyRegexpDelimiter ctermfg=251 ctermbg=16 cterm=NONE guifg=#c4c6cb guibg=#0a0917 gui=NONE
hi rubyEscape ctermfg=213 ctermbg=NONE cterm=NONE guifg=#ff81f6 guibg=NONE gui=NONE
hi rubyControl ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=61 ctermbg=NONE cterm=NONE guifg=#5c69ad guibg=NONE gui=NONE
hi rubyOperator ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi rubyException ctermfg=60 ctermbg=NONE cterm=NONE guifg=#50608a guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=61 ctermbg=NONE cterm=NONE guifg=#5c69ad guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=60 ctermbg=NONE cterm=NONE guifg=#424a7a guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=17 ctermbg=NONE cterm=NONE guifg=#1d2136 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=17 ctermbg=NONE cterm=NONE guifg=#1d2136 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=17 ctermbg=NONE cterm=NONE guifg=#1d2136 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=17 ctermbg=NONE cterm=NONE guifg=#1d2136 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=246 ctermbg=NONE cterm=NONE guifg=#919294 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=17 ctermbg=NONE cterm=NONE guifg=#1d2136 guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=213 ctermbg=NONE cterm=NONE guifg=#ff81f6 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=30 ctermbg=NONE cterm=underline guifg=#297e87 guibg=NONE gui=underline,italic
hi javaScriptRailsFunction ctermfg=17 ctermbg=NONE cterm=NONE guifg=#1d2136 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=94 ctermbg=NONE cterm=bold guifg=#785b12 guibg=NONE gui=bold
hi yamlAnchor ctermfg=61 ctermbg=NONE cterm=NONE guifg=#5c69ad guibg=NONE gui=NONE
hi yamlAlias ctermfg=61 ctermbg=NONE cterm=NONE guifg=#5c69ad guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=251 ctermbg=16 cterm=NONE guifg=#c4c6cb guibg=#0a0917 gui=NONE
hi cssURL ctermfg=106 ctermbg=NONE cterm=NONE guifg=#94bd17 guibg=NONE gui=italic
hi cssFunctionName ctermfg=17 ctermbg=NONE cterm=NONE guifg=#1d2136 guibg=NONE gui=NONE
hi cssColor ctermfg=213 ctermbg=NONE cterm=NONE guifg=#ff81f6 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ee237 guibg=NONE gui=NONE
hi cssClassName ctermfg=41 ctermbg=NONE cterm=NONE guifg=#2ee237 guibg=NONE gui=NONE
hi cssValueLength ctermfg=213 ctermbg=NONE cterm=NONE guifg=#ff81f6 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=19 ctermbg=NONE cterm=NONE guifg=#142ca3 guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
