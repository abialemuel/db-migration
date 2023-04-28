# Kage DB Migration

## Description
Rails migrations in non-Rails (and non Ruby) projects.

## Onboarding and Development Guide

### Dependencies

- Git
- Ruby 3.1.2 (using RVM to install ruby)
- Postgresql/Mysql

### Getting started
1. Clone this repository and install the prerequisites above
2. Run `bundle` to install dependencies
3. Copy `.env` from `env.sample` and modify the configuration value appropriately 
4. Setup database `rake db:create && rake db:migrate`

### To create a new database migration:
    rake db:new_migration name=foo_bar_migration

### To apply your newest migration:
    rake db:migrate

### To revert your last migration
    rake db:rollback

### Documentation
See 
https://github.com/thuss/standalone-migrations 
https://guides.rubyonrails.org/active_record_migrations.html

for more detail information