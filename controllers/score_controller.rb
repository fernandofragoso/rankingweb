class ScoreController < ApplicationController

    get '/scores' do
      Score.all.to_json
    end

    get '/scores/:id' do |id|
      score = Score.first(:id => id)
      halt(404, { message:'Score Not Found'}.to_json) unless score
      score.to_json
    end

    post '/scores' do
      @score = Score.new(json_params)
      if @score.save
        status 201
      else
        status 400
      end
    end

end
