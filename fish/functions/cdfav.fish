function cdfav
    set fl "~/.config/fish/cdfav"
    if [ ! -f $fl ];
        touch $fl
    end
    if [ $argv -eq 1 ];
        tail -9 $fl > $fl
        echo "Adding $argv[1] to favourites"
        echo $argv[1] >> $fl 
    else
        echo "hej"

    end
end
