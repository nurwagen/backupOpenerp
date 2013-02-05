#! /bin/bash

DIR="/home/nurwagen/backupOpenerp"
pg_dump -h localhost -p 5432 -U openerp -F c -b -f $DIR/nurwagen_backup.sql nurwagen
pg_dump -h localhost -p 5432 -U openerp -F c -b -f $DIR/TMFEXPORT_backup.sql TMFEXPORT
YMD=$(date "+%d-%m-%Y %H:%M")
cd $DIR
git add .
git commit -m "$YMD"
git push origin master
