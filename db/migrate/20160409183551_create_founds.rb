class CreateFounds < ActiveRecord::Migration
  def change
    create_table :founds do |t|
      t.integer :user_id
      t.string :title
      t.string :brand
      t.string :category
      t.string :kind
      t.string :color
      t.string :description
      t.string :location
      t.string :photo

      t.timestamps null: false
    end
  end
end
