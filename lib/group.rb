class Group
    include DataMapper::Resource

    property :id, Serial
    property :name, String
    property :order_index, Integer
    belongs_to :tournament, 'Tournament'
    has n, :players, :through => Resource
end
