ifneq (,$(wildcard ./.env))
    include .env
    export
endif

DATE      		= $(shell date +'%Y%m%d-%H%M%S')
RELEASE_BRANCH 	= release-$(DATE)

release-branch:
	git checkout -b $(RELEASE_BRANCH)
	git push origin $(RELEASE_BRANCH)

migrate-prod:
	RAILS_ENV=production rake db:migrate

migrate-staging:
	RAILS_ENV=staging rake db:migrate

migrate-dev:
	rake db:migrate