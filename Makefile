up:
	docker-compose up -d
ps:
	docker-compose ps
build:
	docker-compose build --no-cache --force-rm
stop:
	docker-compose stop
down:
	docker-compose down
restart:
	docker-compose restart

l:
	docker-compose logs --follow
lb:
	docker-compose logs --follow back
lf:
	docker-compose logs --follow front
r:
	docker-compose restart
rb:
	docker-compose restart back
rf:
	docker-compose restart front

eb:
	docker-compose exec back sh
ef:
	docker-compose exec front sh
ep:
	docker-compose exec postgres psql -U postgres -d postgres

npmif:
	docker-compose exec front sh -c "npm install"
npmib:
	docker-compose exec back sh -c "npm install"
npmi:
	@make npmi-back
	@make npmi-front

pmd:
	docker-compose exec back sh -c "npx prisma migrate dev"
pmr:
	docker-compose exec back sh -c "npx prisma migrate reset"
pmg:
	docker-compose exec back sh -c "npx prisma generate"
pdbs:
	docker-compose exec back sh -c "npx prisma db seed"
