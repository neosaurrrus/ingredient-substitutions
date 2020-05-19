class CreateSubstitutions < ActiveRecord::Migration[6.0]
  def change
    create_table :substitutions do |t|
      t.integer :original_id
      t.integer :sub_id
      t.string :description
      t.string :issues
      t.boolean :same_quantity, :default => false
      t.integer :user_id
      t.timestamps
    end
  end
end
