#!/usr/bin/env rake

ENV['APP_ENV'] ||= 'development'

require 'dotenv'
require 'standalone_migrations'
require 'lhm'

ActiveRecord::Base.schema_format = :sql

if ENV['APP_ENV'] == 'development'
  Dotenv.load
end


ENV["SCHEMA"] = File.join(ActiveRecord::Tasks::DatabaseTasks.db_dir, "schema.rb")
StandaloneMigrations::Tasks.load_tasks