class Match
    include DataMapper::Resource

    property :id, Serial
    belongs_to :player_one, 'Player'
    belongs_to :player_two, 'Player'
    belongs_to :round, 'Round'
    belongs_to :score_player_one, 'Score', :required => false
    belongs_to :score_player_two, 'Score', :required => false
    belongs_to :tournament, 'Tournament'
    belongs_to :court, 'Court', :required => false
    property :date, Date, :required => false
end
