.PHONY: up down

up:
	docker-compose up --force-recreate -d
down:
	docker-compose down