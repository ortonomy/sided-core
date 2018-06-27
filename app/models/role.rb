class Role < ApplicationRecord

  ##
  # Table columns
  #
  # t.string :name
  # t.integer :side_id
  #
  ##

  has_many :roles_for_game_types
  has_many :game_types, through: :roles_for_game_types

  has_many :powers
  belongs_to :side, class_name: 'Side', foreign_key: 'side_id'
end
