fun! GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle
endfun

func! AddToWatch()
    let word = expand("<cexpr>")
    call vimspector#AddWatch(word)
endfunction

let g:vimspector_sidebar_width = 60

nnoremap <leader>dc :call vimspector#Continue() <CR>
nnoremap <leader>dd :call vimspector#Launch() <CR>
nnoremap <leader>dq :call vimspector#Reset() <CR>
nnoremap <leader>d? :call AddToWatch()<CR>

nnoremap <leader>dj vimspector#StepOver()<CR>
nnoremap <leader>dk vimspector#StepOut()<CR>
nnoremap <leader>dl vimspector#StepInto()<CR>
nnoremap <leader>dr vimspector#RunToCursor()<CR>
nnoremap <leader>dR vimspector#Restart()<CR>

nnoremap <leader>dbs vimspector#VimspectorToggleBreakpoint()<CR>
nnoremap <leader>dbc vimspector#ToggleConditionalBreakpoint()<CR>
nnoremap <leader>dbD vimspector#ClearBreakpoints()<CR>

nnoremap <leader>dwc :call GotoWindow(g:vimspector_session_windows.code) <CR>
nnoremap <leader>dwt :call GotoWindow(g:vimspector_session_windows.tagpage) <CR>
nnoremap <leader>dwv :call GotoWindow(g:vimspector_session_windows.variables) <CR>
nnoremap <leader>dww :call GotoWindow(g:vimspector_session_windows.watches) <CR>
nnoremap <leader>dws :call GotoWindow(g:vimspector_session_windows.stack_trace) <CR>
nnoremap <leader>dwo :call GotoWindow(g:vimspector_session_windows.output) <CR>

