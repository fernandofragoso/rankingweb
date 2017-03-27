class Round
    include DataMapper::Resource

    property :id, Serial
    property :name, String
    property :abbreviation, String
    property :order_index, Integer
    property :winner_points, Integer
    property :loser_points, Integer
end
