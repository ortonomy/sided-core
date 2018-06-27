class GamePlayer < ApplicationRecord

  ##
  # Table columns
  #
  #  :role
  #  :user_id
  #  :game_session_id
  #  :status
  #
  ##

  belongs_to :game, class_name: 'GameSession', foreign_key: 'game_session_id'
  has_one :user
end
