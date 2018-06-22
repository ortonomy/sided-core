class CreateGameSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :game_sessions do |t|
      t.integer :owner_id
      t.integer :game_type_id
      t.integer :winner_id
      t.boolean :completed
      t.boolean :waiting
      t.boolean :in_progress
      t.timestamps
    end
  end
end
