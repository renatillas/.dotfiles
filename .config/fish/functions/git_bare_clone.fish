function git_bare_clone --argument repo_url
    # Check if the number of arguments is correct
    if test (count $argv) -ne 1
        echo "[ERROR(git_bare_clone)]: Usage: git_clone_and_config <repository_url>" >&2
        return 1
    end

    set repo_url $argv[1]
    set repo_name (basename $repo_url .git)

    # Clone the repository
    if not git clone --bare $repo_url $repo_name
        echo "[ERROR(git_bare_clone)]: Failed to clone repository: $repo_url" >&2
        return 1
    end

    # Change directory to the cloned repository
    cd $repo_name

    # Check if remote.origin.fetch is not present
    if not git config --get remote.origin.fetch
        # If not present, run the git config command
        if not git config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
            echo "[ERROR(git_bare_clone)]: Failed to run git config command" >&2
            return 1
        end
    end

    # Delete all local branches except master to mitigate bare copying all heads
    if not git branch | grep -v master | xargs git branch -D
        echo "[ERROR(git_bare_clone)]: Failed to delete all local branches" >&2
        return 1
    end

    if not git fetch
        echo "[ERROR(git_bare_clone)]: Failed to fetch from remote" >&2
        return 1
    end

    # Change back to the original directory
    cd ..
end
