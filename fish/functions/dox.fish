function dox
    if [ (count $argv) -lt 1 ]
        set argv (whoami)
    end
    ldapsearch -x -b "dc=cs,dc=umu,dc=se" -LLL -h ldap.cs.umu.se "(|(uid=$argv[1])(casid=$argv[1]))"
end
