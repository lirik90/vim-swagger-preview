
function! swagger_previewer#Generate(pluginPath)
  if exists( "g:swagger_preview_verbose_log" ) 
    execute "silent!" . "swagger_preview " . bufname("%")
  else
    execute "silent!" . "swagger_preview " . bufname("%") . "> /dev/null 2>&1"
  endif

  if has('mac')
    call system("osascript " . a:pluginPath . '/applescript/active.scpt')
  else
    call system("xdg-open " . "http://localhost:8017")
  endif
endfunctio