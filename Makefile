test:
	composer exec phpunit

setup: reset install db-prepare

console:
	php ./vendor/bin/psysh

install:
	composer install

db-prepare:
	php db-prepare.php

reset:
	rm db.sqlite || true

lint:
	composer exec phpcs
