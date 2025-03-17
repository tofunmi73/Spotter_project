#!/bin/bash
set -o errexit

cd spotter_trip_app_backend

python manage.py collectstatic --noinput
python manage.py migrate