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
    #   "Welcome to RankingWeb"
      p1 = Player.get(1)
      p2 = Player.get(2)

      round = Round.get(1)

    #   g1 = Group.new(
    #     :name => "Grupo 1",
    #     :order_index => 1
    #   )
      #
    #   g2 = Group.new(
    #     :name => "Grupo 1",
    #     :order_index => 1
    #   )

      tournament = Tournament.new(
        :title => "Primeira Etapa 2017",
        :valid_points => true,
        :draw_b => true,
        :groups => true,
        :starting_round => round
      )

      tournament.players << p1
      tournament.players << p2

    #   tournament.groups << g1
    #   tournament.groups << g2

      if tournament.save
        status 201
      else
        status 400
      end

    #   match = Match.new(
    #     :playerOne => Player.get(1),
    #     :playerTwo => Player.get(2),
    #     :round => Round.get(1),
    #     :tournament => Tournament.get(1),
    #     :court =>Court.get(1),
    #     :date => Date.today
    #   )
    #
    #   if match.save
    #     status 201
    #   else
    #     status 400
    #   end

    end

end
