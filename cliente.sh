#!/bin/bash

PORT="2223"

echo "Cliente TURIP"
SERVER_AD="localhost"

echo "(1) SEND MSG: HOLI_TURIP"

echo "HOLI_TURIP 127.0.0.1" | nc  $SERVER_AD $PORT

echo "(2) LISTEN: Comprobación Handshake"

MSG=`nc -l 2223`

echo $MSG

if [ "$MSG" != "OK_TURIP" ]
then
	echo " ERROR 1 : Handshake incorrecto"
	exit 1
fi

echo "(5) SEND: Nombre de archivo"
	
FILE_NAME= $FILENAME | nc $SERVER_AD $PORT


echo "FILE_NAME vaca.vaca" | nc $SERVER_AD $PORT

echo "(6) LISTEN: Comprobacion de nombre de archivo"

MSG=`nc -l 2223`


 if [ "$MSG" != "OK_FILE_NAME" ]
  then
      echo " ERROR 2 : nombre de archivo incorecto"
 
  exit 2
fi 

cat vacas/$FILE_NAME | nc $SERVER_AD $PORT

exit 0

