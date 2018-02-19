# php-docker
Docker environment for PHP development.
Tested for Nette Framework with Nette utils Requirement Checker.

Scripts expected folder structure ./project/www/root where www 
is public directory and root is app with source, 
which contains composer.json file. If you have different structure please update file init.sh, start.sh and docker-compose.yml with right paths.

Do not forget to update file Dockerfile and set proper mysql connection credentials.
