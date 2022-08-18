autocmd BufNewFile,BufRead  *.txt,*.cfg
	\  for line in getline(1,2) |
	\      if line =~? '^MAIN' |
	\          set filetype=docsis |
	\          break |
	\      endif |
	\  endfor
