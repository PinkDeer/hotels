class Criterion < ActiveRecord::Base
  has_many :criterions_hotels
  has_many :hotels, through: :criterions_hotels
end
