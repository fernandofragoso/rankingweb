class SurfaceController < ApplicationController

    get '/surfaces' do
      Surface.all.to_json
    end

    get '/surfaces/:id' do |id|
      surface = Surface.first(:id => id)
      halt(404, { message:'Surface Not Found'}.to_json) unless surface
      surface.to_json
    end

    post '/surfaces' do
      @surface = Surface.new(json_params)
      if @surface.save
        status 201
      else
        status 400
      end
    end

end
