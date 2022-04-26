class Rule < ApplicationRecord
  belongs_to :rules_list
  validates :content, :name, presence: true
  acts_as_favoritable
end
