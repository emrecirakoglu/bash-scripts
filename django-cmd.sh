#!/bin/bash

IP=127.0.0.1
DjangoPORT=8000
ServerPATH=/opt/apps/django-app


if [ $# -lt 1 ]
then
        echo "Usage : $0 (start/stop/restart)"
        exit
fi

stop_server (){
    echo "Stopping Vmanage Platform"
    fuser -k $DjangoPORT/tcp
}

start_server(){
     echo "Starting Vmanage Platform"
     cd $ServerPATH
     python manage.py runserver $IP:$DjangoPORT
}

case "$1" in
  'start')
     start_server
  ;;

  'stop')
     stop_server
  ;;


  'restart')
     stop_server
     sleep 1
     start_server
  ;;
esac
