class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.text :username
      t.text :email
      t.text :password_digest
      t.text :activate_selector_token
      t.text :activate_verifier_token
      t.boolean :email_verified
      t.boolean :password_reset_requested
      t.text :password_reset_selector_token
      t.text :password_reset_verifier_token
      t.date :password_reset_token_expire
      t.timestamps
    end
  end
end
