class Sword < ApplicationRecord
  has_one_attached :avatar
  # validates :category, numericality: {less_than_or_equal_to: 25, message: "Limit of 25 characters for category"}
  belongs_to :user

  def sword_info
    "#{self.name} --- #{self.category}"
  end
end
