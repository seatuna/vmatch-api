class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :rank, :characters, :opponents

  def characters
    object.characters.pluck(:name)
  end

  def opponents
    object.opponents.pluck(:name)
  end
end
