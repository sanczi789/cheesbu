class CreateCheeseburgers < ActiveRecord::Migration[6.0]
  def change
    create_table :cheeseburgers do |t|
      t.date :date
      t.string :country
      t.string :location
      t.float :height
      t.float :diameter
      t.string :taste
      t.text :additional_comment
      t.integer :rating
      t.string :reviewer

      t.timestamps
    end
  end
end
