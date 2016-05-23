if fnamemodify(getcwd(), ':t') == "Local project Directory"
  :autocmd BufWritePost * execute '!rsync -a Local/directory/full/path remote_host:target/directory'
endif
