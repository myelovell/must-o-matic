class AddUserToRatings < ActiveRecord::Migration[6.1]
  def change
    add_reference :ratings, :user, index: true
  end
end
