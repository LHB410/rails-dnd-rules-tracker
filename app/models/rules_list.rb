class RulesList < ApplicationRecord
  has_many :rules, dependent: :destroy
  has_one_attached :picture
  validates :name, :description, presence: true
  belongs_to :user
  after_create :generate_code

  def generate_code
    self.code = SecureRandom.hex
    save
  end
end
