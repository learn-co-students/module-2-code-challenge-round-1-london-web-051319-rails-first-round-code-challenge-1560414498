class Power < ApplicationRecord
  has_many :heroines_power
  has_many :heroines, through: :heroines_power
end
