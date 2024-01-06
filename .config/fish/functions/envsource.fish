function envsource --argument filename
    if test -f $filename
        while read -l line
            # Ignore empty lines and comments
            if test -n "$line" -a (string sub -l 1 -- $line) != '#'
                set -l key (echo $line | cut -d '=' -f 1)
                set -l value (echo $line | cut -d '=' -f 2-)
                set -gx $key $value
            end
        end <$filename
        echo "Sourced $filename."
    else
        echo "File $filename does not exist."
    end

end

