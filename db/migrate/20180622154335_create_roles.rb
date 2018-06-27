class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :alignded_with
      t.string :tp_win_condition
      t.boolean :skip_meeting_as_maf
      t.integer :appears_to_self_as_role_id
      t.integer :appears_as_role_id
      t.integer :appears_to_cop_as_role_id
      t.integer :vote_weight
      t.boolean :hide_visits
      t.boolean :immune
      t.integer :alignment_id
      t.timestamps
    end
  end
end
