class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :hair_color
      t.integer :level
      t.timestamps
    end

    create_table :characters_parties do |t|
      t.belongs_to :character, index: true
      t.belongs_to :party, index: true
    end
  end
end
