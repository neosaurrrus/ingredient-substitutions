class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :description
      t.boolean :vegan, :default => false
      t.boolean :vegetarian, :default => false
      t.integer :user_id
      t.integer :category_id
      t.timestamps
    end
  end
end
