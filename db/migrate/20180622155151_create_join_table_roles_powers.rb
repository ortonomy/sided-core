class CreateJoinTableRolesPowers < ActiveRecord::Migration[5.2]
  def change
    create_join_table :roles, :powers do |t|
      t.index [:role_id, :power_id]
      t.index [:power_id, :role_id]
    end
  end
end
