function progress
    set max $argv[2]
    set cur $argv[1]".0"
    set perc (math -s5 \($cur / $max\) \* 100)
    set perc (printf "%.0f" $perc)
    printf "\33[1000D"
    printf "%d%% [" $perc
    set perc (math $perc / 2)
    for i in (seq $perc) 
        printf "="
    end
    for i in (seq (math 50 - $perc))
        printf " "
    end
    printf "]"
end
