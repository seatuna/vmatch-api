# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

User.create!(email: 'seatuna@water.com', password: 'fishy')

Character.transaction do
  CSV.foreach(Rails.root + 'data/characters.csv',
              headers: true) do |character_row|
    character = character_row.to_hash
    Character.create!(character)
  end
end

Player.transaction do
  CSV.foreach(Rails.root + 'data/players.csv',
              headers: true) do |player_row|
    player = player_row.to_hash
    Player.create!(player)
  end
end

PlayAsCharacter.transaction do
  CSV.foreach(Rails.root + 'data/play-as-character.csv',
              headers: true) do |pasc_row|
    playAsCharacter = pasc_row.to_hash
    PlayAsCharacter.create!(playAsCharacter)
  end
end

PlayAgainstCharacter.transaction do
  CSV.foreach(Rails.root + 'data/play-against-character.csv',
              headers: true) do |pagc_row|
    playAgainstCharacter = pagc_row.to_hash
    PlayAgainstCharacter.create!(playAgainstCharacter)
  end
end
