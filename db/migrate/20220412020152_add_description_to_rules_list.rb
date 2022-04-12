class AddDescriptionToRulesList < ActiveRecord::Migration[6.1]
  def change
    add_column :rules_lists, :description, :string
  end
end
