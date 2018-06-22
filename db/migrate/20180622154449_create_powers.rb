class CreatePowers < ActiveRecord::Migration[5.2]
  def change
    create_table :powers do |t|
      t.string :name
      t.string :effect
      t.integer :can_target_role_id
      t.integer :can_target_side_id
      t.integer :can_use_in_phase_id
      t.timestamps
    end
  end
end
