" Return number equivalent to given hex string ('0x' is optional).
function DocsisHex2dec(arg)
  return (a:arg =~? '^0x') ? a:arg + 0 : ('0x'.a:arg) + 0
endfunction

command -nargs=0 TLVDecode call TLVDecode()
" decode TLV String
function TLVDecode() abort
    let s:hexa=expand('<cword>')
    echo s:hexa
    if s:hexa !~? '0x[0-9a-f]\{6,}'
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
        let s:hlength = s:hexa[2:3]
        let s:length = DocsisHex2dec(s:hexa[2:3])
        let s:value = s:hexa[5:5+(s:length-1)*2]
        if strlen(s:value)+1 < s:length*2
            echo 'TLV seems truncated'
        endif
        echo 'Type=' . s:type . ' Length=' . s:length . ' Value:' . s:value . ' DecValue=' . DocsisHex2dec(s:value)
        let s:hexa = s:hexa[6+(s:length-1)*2:-1]
    endwhile
endfunction
