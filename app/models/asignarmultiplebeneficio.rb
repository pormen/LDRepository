class Asignarmultiplebeneficio < ApplicationRecord
  belongs_to :trabajador
  belongs_to :centrocosto
  belongs_to :areabenefit
  belongs_to :benefit
end
