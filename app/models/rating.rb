class Rating < ApplicationRecord
  belongs_to :must
  belongs_to :user
  validates :rating, presence: true, 
                     numericality: {greater_than_or_equal_to: 1, 
                                    less_than_or_equal_to: 10}
end
