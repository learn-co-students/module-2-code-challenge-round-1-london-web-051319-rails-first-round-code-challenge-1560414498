class Heroine < ApplicationRecord
  has_many :heroines_power
  has_many :powers, through: :heroines_power

  validates :super_name, uniqueness: true
end
