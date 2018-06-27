class User < ApplicationRecord

  ##
  #
  # Table columns
  #
  # t.text :first_name
  # t.text :last_name
  # t.text :username
  # t.text :email
  # t.text :password_digest
  # t.text :activate_selector_token
  # t.text :activate_verifier_token
  # t.boolean :email_verified
  # t.boolean :password_reset_requested
  # t.text :password_reset_selector_token
  # t.text :password_reset_verifier_token
  # t.date :password_reset_token_expire
  #
  ##
  
  # class methods
  has_secure_password # bcrypt

  # associations
  has_many :game_sessions, -> { order 'created_at DESC' }, inverse_of: 'user'
  has_and_belongs_to_many :game_players

  
end
