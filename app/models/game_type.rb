class GameType < ApplicationRecord
  ##
  #
  # Table columns
  #
  # :name
  # :num_players
  # :mafia_ratio
  # :village_ratio
  # :neutral_ratio
  # :start_phase_id
  #
  ##

  # associations
  has_many :game_sessions, inverse_of: 'game_type'
  
  has_many :roles_for_game_types
  has_many :roles, through: :roles_for_game_types
  
  has_many :phases
  
end
