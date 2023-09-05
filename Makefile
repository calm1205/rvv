up:
	docker compose up -d
build: # gemに変更があれば
	docker compose up --build
down:
	docker compose down
shell:
	docker compose exec web /bin/bash
console:
	docker compose exec web rails console