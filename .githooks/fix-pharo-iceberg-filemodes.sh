#!/bin/sh

# This is a script to fix filesystem problems which are introduced
# by Pharo/Iceberg. It seems that the used libgit2 is not handling filemodes
# correctly. Even the git config filemode=false does not prevent Iceberg/libgit2
# from resetting the filemodes of shell script files. Same for symlink files, which
# are frequently reset to simple text files.
#
# Id did not find a solution, so this post-merge hook should be installed in the
# git repo for Iceberg as symlinks from the .git/hook/post-merge file.

# Keep the shell scripts executable and keep the f*ing symlinks symlinks!
# Do not dare to mess around after a merge, bloody hell!
git restore --staged
