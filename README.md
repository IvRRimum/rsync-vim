# rsync-vim
Each time you will save file inside local uberwebsite.com directory it will push the content to remote server via rsync.
I was using sshfs, but it was so slow. So made this hack.

## Requirements
- rsync
- vim

## How to's

All you need to do is copy the content of this repos vimrc into your own and replace with your own values.


Example of mine vimrc:

`
if fnamemodify(getcwd(), ':t') == "uberwebsite.com"
  :autocmd BufWritePost * execute '!rsync -a ~/Projects/uberwebsite.com remote_host:/var/www'
endif
`

Now each time you will save file inside local uberwebsite.com directory it will push the content to remote server via rsync.
