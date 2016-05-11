class Restaurant < ActiveRecord::Base
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES, allow_nil: false }
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
end
