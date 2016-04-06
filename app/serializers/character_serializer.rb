class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name

  def player
    object.player.id
  end
end
