class ChangeContentTypeToFunction < ActiveRecord::Migration
  def up
    change_column(:functions, :content, :text)
  end

  def down
    change_column(:functions, :content, :string)
  end
end
