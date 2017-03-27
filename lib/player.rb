class Player
    include DataMapper::Resource

    property :id,    Serial
    property :name,  String
    property :email, String
    property :phone, String
    has n, :tournaments, :through => Resource
    has n, :groups, :through => Resource
end
