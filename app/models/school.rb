class School < ApplicationRecord
  has_many :passes
  has_many :students, through: :passes
  has_many :courses
end
