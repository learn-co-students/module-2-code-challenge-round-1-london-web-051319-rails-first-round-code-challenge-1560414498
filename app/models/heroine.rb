class Heroine < ApplicationRecord
    validates :super_name, presence: true
    validates :super_name, uniqueness: true
    validates :name, presence: true

    belongs_to :power

    def self.search(search)
        if search
            power = Power.find_by(id: search[:id])
            if power
                self.where(power_id: power.id)
            else
                Heroine.all
            end
        else 
            Heroine.all
        end
    end

end
