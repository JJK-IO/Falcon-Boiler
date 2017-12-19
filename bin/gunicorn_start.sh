#!/bin/bash

NAME="[app_name]"                                 # Name of the application
APP_DIR=/webapps/[app_name]                       # Django project directory
SOCKFILE=/webapps/[app_name]/run/gunicorn.sock    # we will communicate using this unix socket
LOG_FILE=/webapps/[app_name]/log/gunicorn.log
VIRTUAL_ENV=/opt/[app_name]                       # Virtual Environment base directory
USER=webapps                                    # the user to run as
GROUP=webapps                                   # the group to run as
NUM_WORKERS=4                                   # how many worker processes should Gunicorn spawn
WSGI_MODULE=wsgi                                # WSGI module name

echo "Starting $NAME as `whoami`"

# Activate the virtual environment
cd $APP_DIR
source ${VIRTUAL_ENV}/bin/activate
export PYTHONPATH=$APP_DIR:$PYTHONPATH

# Create the run directory if it doesn't exist
RUNDIR=$(dirname $SOCKFILE)
test -d $RUNDIR || mkdir -p $RUNDIR

# Start your Green Unicorn
# Programs meant to be run under supervisor should not daemonize themselves (do not use --daemon)
exec ${VIRTUAL_ENV}/bin/gunicorn ${WSGI_MODULE}:app \
  --name $NAME \
  --workers $NUM_WORKERS \
  --user=$USER --group=$GROUP \
  --bind=unix:$SOCKFILE \
  --log-level=info \
  --log-file=$LOG_FILE