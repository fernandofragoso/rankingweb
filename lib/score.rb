class Score
    include DataMapper::Resource

    property :id, Serial
    property :set_one, Integer
    property :set_two, Integer
    property :set_three, Integer
    property :wo, Boolean
end
