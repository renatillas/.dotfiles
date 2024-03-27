function tms
    if [ (count $argv) -eq 1 ]
        set selected $argv[1]
    else
        set selected (fd . ~/Projects/work ~/Projects ~/Projects/personal --min-depth 1 --max-depth 1 --hidden --type d | fzf)
    end

    if [ -z $selected ]
        return 0
    end

    set selected_name (string replace -r '\.' '_' (basename $selected))

    set tmux_running (pgrep tmux)

    if [ -z $TMUX ] && [ -z $tmux_running ]
        tmux new-session -s $selected_name -c $selected
        return 0
    end

    if not tmux has-session -t $selected_name
        tmux new-session -ds $selected_name -c $selected
    end

    tmux switch-client -t $selected_name
end
