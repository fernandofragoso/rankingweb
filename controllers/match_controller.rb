class MatchController < ApplicationController

    get '/matches' do
      Match.all.to_json
    end

    get '/matches/:id' do |id|
      match = Match.first(:id => id)
      halt(404, { message:'Match Not Found'}.to_json) unless match
      match.to_json
    end

    post '/matches' do
      @match = Match.new(json_params)
      if @match.save
        status 201
      else
        status 400
      end
    end

end
