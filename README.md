# git-diff-no-index

A simple shell script to find diff in two directories that are not git repositories themselves but they are part of some root git repository.

The script does following

1. Accepts source and target directory as inputs
2. create two directories on temp file systems
3. copies all files from source to one of temp directory by ignoring all files mentioned in root .gitignore
4. copies all files from target to one of temp directory by ignoring all files mentioned in root .gitignore
5. then runs `git diff --no-index` with those two temp directories

PS No need to delete temp directories as those are created on temp filesystem

More context here
https://twitter.com/kentcdodds/status/1541337555915997186
https://stackoverflow.com/questions/72769098/get-the-no-index-diff-of-files-in-two-directories-but-ignore-patterns
