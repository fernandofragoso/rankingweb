class PlayerController < ApplicationController

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

end
