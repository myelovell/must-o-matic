class CreateMusts < ActiveRecord::Migration[6.1]
  def change
    create_table :musts do |t|
      t.string :name
      t.string :manufacturer
      t.integer :volume
      t.float :price

      t.timestamps
    end
  end
end
