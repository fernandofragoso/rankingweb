# rankingweb.rb
require 'rubygems'
require 'sinatra'
require 'data_mapper'
require  'dm-migrations'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "sqlite3:rankingweb.db")

class Player
    include DataMapper::Resource

    property :id,    Serial
    property :name,  String
    property :email, String
    property :phone, String
end

DataMapper.finalize
DataMapper.auto_migrate!

@player = Player.create(
  :name        => "Fernando Fragoso",
  :email       => "fernandofragoso@gmail.com",
  :phone       => "988482529"
)

get '/' do
  "Welcome to RankingWeb!! #{Player.get(1).name} (#{Player.get(1).email})"
end
