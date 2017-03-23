require "rubygems"
require "bundler/setup"
require "sinatra"
require File.join(File.dirname(__FILE__), "environment")

@player = Player.create(
  :name        => "Fernando Fragoso",
  :email       => "fernandofragoso@gmail.com",
  :phone       => "988482529"
)

configure :production, :development do
  enable :logging
end

helpers do
  # add your helpers here
end

get '/' do
  "Welcome to RankingWeb!"
end

get '/players' do
    content_type :json
    @players = Player.all()
    @players.to_json
end
