class CreateJoinTableGameTypesRoles < ActiveRecord::Migration[5.2]
  def change
    create_join_table :game_types, :roles do |t|
      t.integer :max_num_of_role_type
      t.index [:game_type_id, :role_id]
      t.index [:role_id, :game_type_id]
    end
  end
end
