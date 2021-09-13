class LocationSerializer
  include JSONAPI::Serializer
  attributes :name, :location_type
end
