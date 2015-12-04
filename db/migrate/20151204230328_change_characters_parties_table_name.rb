class ChangeCharactersPartiesTableName < ActiveRecord::Migration
  def change
    rename_table :characters_parties, :character_parties
  end
end
