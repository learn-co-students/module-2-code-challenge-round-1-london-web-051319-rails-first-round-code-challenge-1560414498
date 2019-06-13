class Heroine < ApplicationRecord
   belongs_to :power

   validates :name, uniqueness: true
   validates :super_name, uniqueness: true
   validates :name, length: {minimum: 3}
   validates :super_name, length: {minimum: 3}

end
