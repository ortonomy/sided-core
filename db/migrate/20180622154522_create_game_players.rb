class CreateGamePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :game_players do |t|
      t.integer :role
      t.integer :user_id
      t.integer :game_session_id
      t.string :status
      t.timestamps
    end
  end
end
