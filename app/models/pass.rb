class Pass < ApplicationRecord
  belongs_to :student
  belongs_to :school
  belongs_to :offer
end
