require "rubygems"
require "bundler/setup"
require "sinatra"
require File.join(File.dirname(__FILE__), "environment")

configure :production, :development do
  enable :logging
end

helpers do
  def json_params
    begin
      JSON.parse(request.body.read)
    rescue
      halt 400, { message:'Invalid JSON' }.to_json
    end
  end
end

before do
  content_type :json
end

get '/' do
  "Welcome to RankingWeb!"
end

get '/players' do
  Player.all.to_json
end

get '/players/:id' do |id|
  player = Player.first(:id => id)
  halt(404, { message:'Player Not Found'}.to_json) unless player
  player.to_json
end

post '/players' do
  @player = Player.new(json_params)
  if @player.save
    status 201
  else
    status 400
  end
end
