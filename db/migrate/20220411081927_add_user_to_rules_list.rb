class AddUserToRulesList < ActiveRecord::Migration[6.1]
  def change
    add_reference :rules_lists, :user, null: false, foreign_key: true
  end
end
