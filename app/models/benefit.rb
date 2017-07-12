class Benefit < ApplicationRecord
  belongs_to :areabenefit
  has_many :assignbenefits 

end
