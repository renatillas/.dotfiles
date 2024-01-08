function git_bare_clone --argument repo_url
    # Check if the number of arguments is correct
    if test (count $argv) -ne 1
        echo "Usage: git_clone_and_config <repository_url>"
        return 1
    end

    set repo_url $argv[1]
    set repo_name (basename $repo_url .git)

    # Clone the repository
    if not git clone --bare $repo_url $repo_name
        echo "Failed to clone repository: $repo_url"
        return 1
    end

    # Change directory to the cloned repository
    cd $repo_name

    # Check if remote.origin.fetch is not present
    if not git config --get remote.origin.fetch
        # If not present, run the git config command
        if not git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
            echo "Failed to run git config command"
            return 1
        end
    end

    # Change back to the original directory
    cd ..
end
