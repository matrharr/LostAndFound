class CreateLosts < ActiveRecord::Migration
  def change
    create_table :losts do |t|
      t.integer :user_id
      t.string :title
      t.string :brand
      t.string :category
      t.string :kind
      t.string :color
      t.string :description
      t.integer :reward
      t.string :picture
      t.string :location

      t.timestamps null: false
    end
  end
end
