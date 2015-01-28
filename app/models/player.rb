class Player < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :team

  validates :name, presence: true

  def self.get_available_players
    self.where(team_id: nil)
  end

  def self.unavailable_players
    self.where(team_id: !nil)
  end

end
