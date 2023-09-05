up:
	docker compose up -d
build: # gemに変更があれば
	docker compose up --build
down:
	docker compose down
shell-app:
	docker compose exec app /bin/bash
shell-frontend:
	docker compose exec frontend /bin/bash
console:
	docker compose exec web rails console