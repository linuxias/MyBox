# MyConfiguration

1. mkcscope.sh
 1.1 cp mkcscope.sh /usr/bin/mkcscope

 1.2 Insert below script in .vimrc
"cscope

set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb

if filereadable("./cscope.out")
	cs add cscope.out
else
	cs add /usr/src/linux/cscope.out
endif
set csverb
"cscope


2. git_branch_name.txt
If you want to display git branch name to shell you used, copy and paste your shell rc file.
