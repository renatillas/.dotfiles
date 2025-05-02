function test_fever2_debug --wraps='docker compose run --publish 5678:5678 api python -m debugpy --listen 0.0.0.0:5678 --wait-for-client src/manage.py test --settings=config.settings --no-input --keepdb $argv'
    docker compose run --publish 5678:5678 api python -m debugpy --listen 0.0.0.0:5678 --wait-for-client src/manage.py test --settings=config.settings --no-input --keepdb $argv
end
