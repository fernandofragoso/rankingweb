class CourtController < ApplicationController

    get '/courts' do
      Court.all.to_json
    end

    get '/courts/:id' do |id|
      court = Court.first(:id => id)
      halt(404, { message:'Court Not Found'}.to_json) unless court
      court.to_json
    end

    post '/courts' do
      @court = Court.new(json_params)
      if @court.save
        status 201
      else
        status 400
      end
    end

end
