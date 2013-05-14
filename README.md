git-bash-prompt-utils
=====================

Small collection of helpers for a nicer bash PS1 when working with git repositories. For instance, git relative subdir.

## Contents

git-bash-prompt-extras.sh contains the following functions:

* __git_relative_subdir : When working in a git repo, show the working directory relative to the git root.

## __git_relative_subdir 

When working in a git repo, show the working directory relative to the git root.

### Example
... 

### Usage

1. Somehow get your copy of git-bash-prompt-extras.sh 
git clone TODO

2. Put it someplace suitable
```
cp git-bash-prompt-extras.sh ~/applications
```
3. Include it in your .bashrc

Add this to your .bashrc, before your PS1 is defined:
```
source ~/applications/git-bash-prompt-extras.sh
```
4. Set up your PS1 prompt:

Replace \w in PS1 with___git_relative_subdir, like:

```
# Replace
PS1=${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] 

# with PS1 using __git_relative_subdir:
PS1=${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] `__git_relative_subdir` \$\[\033[00m\] 
```
