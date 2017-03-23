require 'rubygems'
require 'bundler/setup'
require 'dotenv'
require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-aggregates'
require 'dm-migrations'
require 'dm-serializer'
require 'ostruct'
require 'json'

Dotenv.load

configure do
    # load models
    $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
    Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }
end

configure :development do
    DataMapper.setup(:default, "sqlite3:rankingweb.db")
    DataMapper.finalize
    DataMapper.auto_migrate!
end

configure :production do
    DataMapper.setup(:default, "postgres://whifhvlngsdofr:3dd17310f4315de881d01999329cd6cacb9debf3566f67a7f58481189396de2b@ec2-184-72-249-88.compute-1.amazonaws.com/do62cegprqvl8")
    DataMapper.finalize
    DataMapper.auto_update!    
end
