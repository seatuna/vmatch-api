class CreatePlayAsCharacters < ActiveRecord::Migration
  def change
    create_table :play_as_characters do |t|
      t.references :player, index: true, foreign_key: true
      t.references :character, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
