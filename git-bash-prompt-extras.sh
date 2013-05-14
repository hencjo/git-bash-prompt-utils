
# __git_relative_subdir can be used to replace Bash's \w (working directory) 
# For git-repositories it will output the current working directory 
# relative to the parent of .git/
#
# include it in your PS1 as : 
# 
# Vanilla PS1
# PS1=${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] 
#
# PS1 featuring __git_relative_subdir:
# PS1=${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] `__git_relative_subdir` \$\[\033[00m\] 
#

function __git_relative_subdir () {
	if [ "$(__gitdir)" == "" ]; then
		echo $PWD | sed 's@'$HOME'@~@g'
	else 
		src_root=`dirname $(__gitdir)`
		if [ "$src_root" == "." ]; then
			echo "/"
		else 
			echo $PWD | sed 's@'$src_root'@@g'
		fi
	fi
}
