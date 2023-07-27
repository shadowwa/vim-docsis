if exists('g:loaded_vimdocsis')
    finish
endif
let g:loaded_vimdocsis = 1

" Return number equivalent to given hex string ('0x' is optional).
function DocsisHex2dec(arg)
  return (a:arg =~? '^0x') ? a:arg + 0 : ('0x'.a:arg) + 0
endfunction

function DocsisHex2string(arg)
    return substitute(a:arg, '\(\x\x\)', '\=nr2char("0x" . submatch(1))', 'g')
endfunction

command -nargs=0 TLVDecode call TLVDecode()
" decode TLV String
function TLVDecode() abort
    let s:hexa=expand('<cword>')
    echo s:hexa
    if s:hexa !~? '^0x\x\{6,}$'
        echo 'Does not look like a TVL'
        return
    endif
    let s:hexa=s:hexa[2:-1]
    while strlen(s:hexa) > 0
        if strlen(s:hexa) < 6
            echo 'not enough data to calculate a TLV in ' . s:hexa
            return
        endif
        let s:type = s:hexa[0:1]
        let s:length = DocsisHex2dec(s:hexa[2:3])
        let s:value = s:hexa[4:5+(s:length-1)*2]
        if strlen(s:value)+1 < s:length*2
            echo 'TLV seems truncated'
        endif
        let s:string = DocsisHex2string(s:value)
        if s:string =~? '^[[:print:]]*$'
            let s:string = "\tStringValue:" . s:string
        else
            let s:string = ''
        endif
        echo 'Type=' . s:type . ' Length=' . s:length . ' Value:' . s:value . "\tDecValue=" . DocsisHex2dec(s:value) . s:string
        let s:hexa = s:hexa[6+(s:length-1)*2:-1]
    endwhile
endfunction
