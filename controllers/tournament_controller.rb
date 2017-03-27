class TournamentController < ApplicationController

    get '/tournaments' do
      Tournament.all.to_json
    end

    get '/tournaments/:id' do |id|
      tournament = Tournament.first(:id => id)
      halt(404, { message:'Tournament Not Found'}.to_json) unless tournament
      tournament.players.to_json
    end

    post '/tournaments' do
      @tournament = Tournament.new(json_params)
      if @tournament.save
        status 201
      else
        status 400
      end
    end

end
