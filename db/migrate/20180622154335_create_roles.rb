class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :name
      t.integer :side_id
      t.timestamps
    end
  end
end
