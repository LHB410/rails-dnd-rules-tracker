class RulesList < ApplicationRecord
  has_many :rules, dependent: :destroy
  validates :name, presence: true
  belongs_to :user
end
