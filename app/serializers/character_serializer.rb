class CharacterSerializer
  include JSONAPI::Serializer
  attributes :name, :gender, :alive, :titles, :aliases, :occupation, :affiliations, :shardbearer, :birth_year, :death_year, :father, :mother, :siblings, :relatives, :books
end
