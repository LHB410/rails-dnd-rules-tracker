class RulesList < ApplicationRecord
  has_many :rules, dependent: :destroy
  has_one_attached :picture
  validates :name, :description, presence: true
  belongs_to :user
end
