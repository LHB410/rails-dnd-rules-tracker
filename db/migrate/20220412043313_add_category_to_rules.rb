class AddCategoryToRules < ActiveRecord::Migration[6.1]
  def change
    add_column :rules, :category, :string
  end
end
