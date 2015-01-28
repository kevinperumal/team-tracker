class Player < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :team

  validates :name, presence: true

end
