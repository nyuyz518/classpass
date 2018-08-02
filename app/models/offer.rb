class Offer < ApplicationRecord
  has_many :passes
  has_many :students, through: :passes
  has_many :schools, through: :passes

end
