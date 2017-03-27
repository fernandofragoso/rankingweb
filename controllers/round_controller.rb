class RoundController < ApplicationController

    get '/rounds' do
      Round.all.to_json
    end

    get '/rounds/:id' do |id|
      round = Round.first(:id => id)
      halt(404, { message:'Round Not Found'}.to_json) unless round
      round.to_json
    end

    post '/rounds' do
      @round = Round.new(json_params)
      if @round.save
        status 201
      else
        status 400
      end
    end

end
