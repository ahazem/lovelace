default: up

rebuild:
	docker-compose up --build

cli:
	docker attach lovelace_cli_1

up:
	docker-compose up

down:
	docker-compose down
