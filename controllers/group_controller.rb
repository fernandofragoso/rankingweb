class GroupController < ApplicationController

    get '/groups' do
      Group.all.to_json
    end

    get '/groups/:id' do |id|
      group = Group.first(:id => id)
      halt(404, { message:'Group Not Found'}.to_json) unless group
      group.players.to_json
    end

    post '/groups' do
      @group = Group.new(json_params)
      if @group.save
        status 201
      else
        status 400
      end
    end

end
