class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :rank, :characters, :opponents
end
