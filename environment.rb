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

    DataMapper::Logger.new($stdout, :debug)
    DataMapper.setup(:default, "sqlite3:rankingweb.db")
    DataMapper.finalize
    DataMapper.auto_migrate!
end
