class CreateJoinTableGameSessionsGamePlayers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :game_sessions, :game_players do |t|
      t.index [:game_session_id, :game_player_id], name: 'index_on_game_s_id_and_game_p_id'
      t.index [:game_player_id, :game_session_id], name: 'index_on_game_p_id_and_game_s_id'
    end
  end
end
