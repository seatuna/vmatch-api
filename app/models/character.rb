class Character < ActiveRecord::Base
  has_many :players, through: :play_as_characters, dependent: :destroy
  has_many :play_as_characters
  has_many :player_opponents, through: :play_against_characters, source: :player, dependent: :destroy
  has_many :play_against_characters

  validates_uniqueness_of :name
end
