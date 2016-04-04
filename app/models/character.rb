class Character < ActiveRecord::Base
  has_many :players, through: :play_as_characters
  has_many :play_as_characters
  has_many :player_opponents, through: :play_against_characters
  has_many :play_against_characters
end
