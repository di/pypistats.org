#!/usr/bin/env bash
set -o allexport
source pypistats/secret/.env
set +o allexport
pipenv run celery -A pypistats.run.celery worker -l info
