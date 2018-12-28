" Hey IDE for Vim!

" Credits to @xolox (https://github.com/xolox) for this function
" https://stackoverflow.com/a/6271254/3170948
function! s:get_visual_selection()
    " Why is this not a built-in Vim script function?!
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, " ")
endfunction

function! g:AskHey(content)
    let snippetContent = s:get_visual_selection()
    execute '!curl -d "{\"content\": \"' . a:content . '\", \"snippet\": {\"content\": \"' . snippetContent . '\"}}" -H "Content-Type: application/json" -X POST "https://api2.get-hey.com/v1/ide"'
	echom "Edit and Post your question at https://ide.hey.network/p/:TOKEN"
endfunction
