class Must < ApplicationRecord
    has_many :ratings
    validates :volume, numericality: {greater_than_or_equal_to: 1 }
    validates :price, numericality: {greater_than_or_equal_to: 1 }
    validates_associated :ratings
    validates :name, uniqueness: {scope: [:volume, :manufacturer], message: 'grillkorv'}        
    

    def price_per_liter
        price / volume * 100
    end

    def average_rating 
        ratings.average(:rating).round(2)
    end

end
