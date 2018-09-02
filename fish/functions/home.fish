function home
    if [ (count $argv) -eq "0" ]
        cd ~
    else
        cd ~$argv[1]
    end
end
