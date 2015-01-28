class Team < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :players

  validates :name, presence: true
  validates :name, uniqueness: true

  def owner
    self.user.name

  end
end
