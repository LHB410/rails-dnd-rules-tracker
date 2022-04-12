class Rule < ApplicationRecord
  belongs_to :rules_list
  belongs_to :user
  validates :content, :name, presence: true
end
