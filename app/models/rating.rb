class Rating < ApplicationRecord
  belongs_to :must
  validates :rating, presence: true, 
                     numericality: {greater_than_or_equal_to: 1, 
                                    less_than_or_equal_to: 10}
end
