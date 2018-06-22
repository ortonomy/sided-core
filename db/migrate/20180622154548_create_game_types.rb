class CreateGameTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :game_types do |t|
      t.string :name
      t.integer :max_players
      t.integer :mafia_ratio
      t.integer :village_ratio
      t.integer :neutral_ratio
      t.timestamps
    end
  end
end
