class CreatePlayAgainstCharacters < ActiveRecord::Migration
  def change
    create_table :play_against_characters do |t|
      t.references :player, index: true, foreign_key: true
      t.references :character, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
