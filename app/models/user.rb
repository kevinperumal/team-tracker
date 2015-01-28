class User < ActiveRecord::Base
  has_secure_password
  # Remember to create a migration!

  has_one :team
  validates :name, uniqueness: true

end
