function what_the_shell --description 'Use GitHub Copilot to get shell commands from natural language descriptions.'
    set -l file (mktemp)
    command github-copilot-cli what-the-shell $argv --shellout $file
    if test $status -ne 0
        rm -rf $file
        return $status
    end
    eval (cat $file)
    rm -rf $file
end
