class PlayAsCharacter < ActiveRecord::Base
  belongs_to :player, inverse_of: :play_as_characters
  belongs_to :character, inverse_of: :play_as_characters
end
