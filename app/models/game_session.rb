class GameSession < ApplicationRecord
  ##
  #
  # Table columns
  #
  # t.integer :owner_id
  # t.integer :game_type_id
  # t.integer :winner_id
  # t.boolean :completed
  # t.boolean :waiting
  # t.boolean :in_progress
  #
  ##

  # associations
  has_one :game_type, foreign_key: 'game_type_id'
  has_one :user, foreign_key: 'owner_id'

  has_many :game_players, inverse_of: 'game'
  
end
