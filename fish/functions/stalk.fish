function stalk
    set fingr (finger $argv[1])
    if [ (echo $fingr | grep -o "last seen on" | wc -l) -ne 0 ]
        echo "Cant stalk user, finger returned nothing"
        return
    end    
 
    if [ (echo $fingr | grep -o "has never logged in" | wc -l) -ne 0 ]
        echo "User has never logged in"
        return
    end

    if [ (echo $fingr | grep -o "find any user matching" | wc -l) -ne 0 ]
        echo "No matching user found"
        return
    end 
    set ttys TTY
    set comps Computer
    set usr User
    set locs Location
    
    for e in $fingr
        set ttys $ttys (echo $e       | awk '{ system("echo \""$0"\" | cut -b 35-41") }')
        set comps $comps (echo $e | awk '{ system("echo \""$0"\" | cut -b 42-56") }')
        set usr $usr (echo $e       | awk '{ system("echo \""$0"\" | cut -b 1-9"  ) }')
    end
    
    set max (count $comps)
    set i 1
    for comp in $comps
        set locs $locs (getroom (string trim $comp) | tr '\n' ' ')
        #(ldapwhatis $comp | awk '{ n = split($0, a, ":"); print a[n-2] }')
        if not contains -- -p $argv
            progress $i $max
        end
        set i (math $i + 1)
    end

    if not contains -- -p $argv
        printf "\n"
    end
    set -e locs[2]
    for i in (seq 1 (count $ttys))
        printf "%16s" (string trim $comps[$i])
        printf "%7s" (string trim $ttys[$i])
        printf "%19s" (string trim $locs[$i])
        printf "%9s\n" (string trim $usr[$i])
    end
end
