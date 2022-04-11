class RulesList < ApplicationRecord
  has_many :rules, dependent: :destroy
  validates :name, presence: true
end
