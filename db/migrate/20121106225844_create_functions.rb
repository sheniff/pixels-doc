class CreateFunctions < ActiveRecord::Migration
  def change
    create_table :functions do |t|
      t.string :name
      t.integer :category_id
      t.integer :subcategory_id
      t.string :description
      t.string :content

      t.timestamps
    end
    add_index :functions, [:category_id, :subcategory_id]
  end
end
