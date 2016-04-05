class Player < ActiveRecord::Base
  belongs_to :user, inverse_of: :users
  has_many :characters, through: :play_as_characters, dependent: :destroy
  has_many :play_as_characters
  has_many :opponents, through: :play_against_characters, source: :character, dependent: :destroy
  has_many :play_against_characters

  validates_uniqueness_of :name
end
