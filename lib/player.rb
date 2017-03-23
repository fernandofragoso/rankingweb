class Player
    include DataMapper::Resource

    property :id,    Serial
    property :name,  String
    property :email, String
    property :phone, String
end
