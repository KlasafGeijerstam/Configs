function specstalk
    echo "## Sessions"
    set comps (finger $argv[1] | awk '{ system("echo \""$0"\" | cut -b 42-56") }')
    set max (count $comps)
    for comp in $comps
        set locs $locs (getroom (string trim $comp) | tr '\n' ' ')
    end
    for i in (seq 1 (count $comps))
        printf "* %s@%s\n" (string trim $comps[$i]) (string trim $locs[$i])
    end
    #echo "* Powered by ** Fish **, the friendly interactive shell *"
end
