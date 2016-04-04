class PlayAgainstCharacter < ActiveRecord::Base
  belongs_to :player, inverse_of: :play_against_characters
  belongs_to :character, inverse_of: :play_against_characters
end
