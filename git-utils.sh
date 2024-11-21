#!/bin/bash
path="/data/data/com.termux/files/home/storage/path/to/your/vault"

# Adds everything and commits if there are any changes in the repo.
commit() {
    cd $path
    if [[ `git status --porcelain` ]]; then
        git add . &> /dev/null
        git commit -m "Your commit message" &> /dev/null
    fi
}

# Commit, pull and push. If conflicts are detected, they are commited as is
# and conflicted files are listed in the .conflicted_files file for you to resolve later.
push() {
    cd $path
    commit
    git pull &> /dev/null
    conflicted=`git diff --name-only --diff-filter=U`
    if [[ $conflicted ]]; then
        echo "WARNING: Conflicts detected. Proceeding"
        echo $conflicted > ./.conflicted_files
        commit
    fi
    git push &> /dev/null
}
