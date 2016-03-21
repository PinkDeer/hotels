class CriterionsHotel < ActiveRecord::Base
  belongs_to :criterions
  belongs_to :hotels
end
