class CreateSubstitutions < ActiveRecord::Migration[6.0]
  def change
    create_table :substitutions do |t|
      t.integer :original_id
      t.integer :sub_id
      t.string :description

      t.timestamps
    end
  end
end
