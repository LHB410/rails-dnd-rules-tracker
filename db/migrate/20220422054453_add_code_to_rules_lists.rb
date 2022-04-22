class AddCodeToRulesLists < ActiveRecord::Migration[6.1]
  def change
    add_column :rules_lists, :code, :string
  end
end
