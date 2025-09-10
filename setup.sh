#! /bin/bash

if [ "$#" -ne 1 ]
then
  echo "You have to input 1 Parameter:"
  echo "Filename of environment variables"
  echo "eg: ./setup.sh .env"
  exit 1
fi

ENV=$1

echo "##############################################"
echo "#            Create Docker Image             #"
echo "##############################################"
docker build -t babyshop .

echo "##############################################"
echo "#          Starting Docker Container         #"
echo "##############################################"
docker run --name babyshop --restart always -d -p 8025:8000  --env-file="${ENV}" babyshop