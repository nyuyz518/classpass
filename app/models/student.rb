class Student < ApplicationRecord
  has_many :passes
  has_many :schools, through: :passes
  has_many :hobbies

  validates :user_name, presence: { case_sensitive: false }
  has_secure_password
end
