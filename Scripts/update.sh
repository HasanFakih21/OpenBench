  git fetch
  git pull --ff-only origin master
  source .venv/bin/activate
  source /etc/openbench.env
  pip install -r requirements.txt
  python3 manage.py check --settings=OpenSite.settings_prod
  python3 manage.py migrate --settings=OpenSite.settings_prod
  python3 manage.py collectstatic --noinput --settings=OpenSite.settings_prod
  sudo systemctl restart openbench-gunicorn