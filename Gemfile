source 'https://rubygems.org'
ruby '2.2.1'

gem 'sinatra'
gem 'json', '>= 1.8.3'
gem 'dotenv'
gem 'rake'
gem 'data_mapper'
gem 'dm-core'
gem 'dm-timestamps'
gem 'dm-validations'
gem 'dm-aggregates'
gem 'dm-migrations'

group :development do
    gem 'foreman'
    gem 'shotgun'
    gem 'sqlite3'
    gem 'dm-sqlite-adapter'
end

group :test do
    gem 'rspec', :require => 'spec'
    gem 'rack-test'
end

group :production do
    gem 'dm-postgres-adapter'
    gem 'pg'
end
