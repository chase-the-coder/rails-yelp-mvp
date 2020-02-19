class Restaurant < ApplicationRecord
#   Validation
# A restaurant must have at least a name, an address and a category.
# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
