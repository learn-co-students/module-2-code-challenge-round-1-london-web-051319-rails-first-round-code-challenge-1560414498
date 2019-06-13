class Heroine < ApplicationRecord
   belongs_to :power

   validates :name, uniqueness: true
   validates :super_name, uniqueness: true
   validates :name, length: {minimum: 3}
   validates :super_name, length: {minimum: 3}

   def self.filter(params)
      params[:power_id] ? @heroines = Heroine.where("power_id = ? ", params[:power_id]) : @heroines = Heroine.all
   end

end
