#!/bin/sh

set -e

/env/bin/python manage.py migrate --fake-initial --noinput
/usr/bin/supervisord

