class Phase < ApplicationRecord
  ##
  #
  # Table columns
  #
  # t.string :name
  # t.string :time
  # t.integer :sequence
  #
  ##

  # associations
  has_and_belongs_to_many :game_types
  has_many :powers
end
