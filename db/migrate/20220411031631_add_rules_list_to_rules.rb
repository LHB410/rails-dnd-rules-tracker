class AddRulesListToRules < ActiveRecord::Migration[6.1]
  def change
    add_reference :rules, :rules_list, null: false, foreign_key: true
  end
end
