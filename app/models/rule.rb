class Rule < ApplicationRecord
  belongs_to :rules_list
  validates :content, :name, presence: true
end
