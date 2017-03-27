class Court
    include DataMapper::Resource

    property :id,      Serial
    property :name,    String
    property :address, String, :required => false
    belongs_to :surface, 'Surface'
end
