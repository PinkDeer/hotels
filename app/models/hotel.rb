class Hotel < ActiveRecord::Base
  has_many :criterions_hotels
  has_many :criterions, through: :criterions_hotels
end
