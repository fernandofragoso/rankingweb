require "rubygems"
require "bundler/setup"
require "sinatra"
require File.join(File.dirname(__FILE__), "../environment")

class ApplicationController < Sinatra::Base

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

end
