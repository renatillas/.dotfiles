function create_env --argument python_version
    # Create the virtual environment
    $python_version -m venv venv

    # Rename the deactivate function
    sed -i '' s/deactivate/deactivate_without_envunsource/g venv/bin/activate.fish

    # Append the line to the activate.fish script
    echo 'envsource .env' >>venv/bin/activate.fish
    echo 'envsource secrets.env' >>venv/bin/activate.fish

    # Append new deactivate function
    echo 'function deactivate' >>venv/bin/activate.fish
    echo '    # Call the original deactivate function' >>venv/bin/activate.fish
    echo '    deactivate_without_envunsource' >>venv/bin/activate.fish
    echo '    # Unsource the .env and secrets.env files' >>venv/bin/activate.fish
    echo '    envunsource .env' >>venv/bin/activate.fish
    echo '    envunsource secrets.env' >>venv/bin/activate.fish
    echo end >>venv/bin/activate.fish
end
