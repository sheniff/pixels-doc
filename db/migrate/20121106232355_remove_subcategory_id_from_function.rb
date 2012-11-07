class RemoveSubcategoryIdFromFunction < ActiveRecord::Migration
  def up
    remove_column :functions, :subcategory_id
  end

  def down
    add_column :functions, :subcategory_id, :integer
  end
end
