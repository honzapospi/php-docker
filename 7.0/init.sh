#!/usr/bin/env bash
mkdir project/www/root/log
mkdir project/www/root/temp
chmod 777 project/www/root/log
chmod -R 777 project/www/root/temp
docker-compose build
docker run --rm --interactive --tty --volume $PWD/project/www/root:/app composer/composer:php7 install
