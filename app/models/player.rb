class Player < ActiveRecord::Base
  has_many :characters, through: :play_as_characters
  has_many :play_as_characters
  has_many :opponents, through: :play_against_characters, source: :character
  has_many :play_against_characters
end
