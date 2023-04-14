function gh_assist --description 'Convert plain english to GitHub CLI commands.'
    set -l file (mktemp)
    command github-copilot-cli gh-assist $argv --shellout $file
    if test $status -ne 0
        rm -rf $file
        return $status
    end
    eval (cat $file)
    rm -rf $file
end
