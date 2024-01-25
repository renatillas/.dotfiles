function tpc --wraps='docker compose run api python src/manage.py test --settings=config.settings --no-input --keepdb' --description 'alias tpc=docker compose run api python src/manage.py test --settings=config.settings --no-input --keepdb'
  docker compose run api python src/manage.py test --settings=config.settings --no-input --keepdb $argv
end
