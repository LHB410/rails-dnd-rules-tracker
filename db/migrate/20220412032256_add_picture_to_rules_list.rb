class AddPictureToRulesList < ActiveRecord::Migration[6.1]
  def change
    add_column :rules_lists, :picture, :string
  end
end
