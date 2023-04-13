function git_assist --description 'Translate a natural language description of a git command to an actual git command.'
    set -l file (mktemp)
    command github-copilot-cli git-assist $argv --shellout $file
    if test $status -ne 0
        rm -rf $file
        exit 1
    end
    eval (cat $file)
    rm -rf $file
end
