up:
	docker compose up -d
build: # gemに変更があれば
	docker compose up --build
down:
	docker compose down
shell-api:
	docker compose exec api /bin/bash
shell-frontend:
	docker compose exec frontend /bin/bash
console:
	docker compose exec api rails console