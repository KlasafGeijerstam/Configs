function goto
    switch $argv[1]
        case functions
            set l ~/.config/fish/functions
        case fish
            set l ~/.config/fish
        case stash
            set l /import/anarchy/dv16kar-stash
    end

    cd $l
end            
