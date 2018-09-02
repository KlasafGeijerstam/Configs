function maxlen
	set max 0
    for i in $argv
        if [ (string length $i) -gt $max ]
            set max (string length $i)
        end
    end
    echo $max
end
