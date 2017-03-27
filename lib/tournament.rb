class Tournament
    include DataMapper::Resource

    property :id, Serial
    property :title, String
    property :start_date, Date, :required => false
    belongs_to :champion, 'Player', :required => false
    belongs_to :runner_up, 'Player', :required => false
    has n, :players, :through => Resource
    has n, :groups, :through => Resource
    property :valid_points, Boolean
    property :draw_b, Boolean
    property :has_groups, Boolean
    belongs_to :starting_round, 'Round'
end
