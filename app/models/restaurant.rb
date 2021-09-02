# frozen_string_literal: false

class Restaurant < ApplicationRecord
  # A restaurant must have a name, an address and a category.
  validates :name, :address, :category, presence: true

  # When a restaurant is destroyed, all of its reviews must be destroyed as well
  has_many :reviews, dependent: :destroy

  # A restaurant category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian],
    message: '%<value>s is not a valid category' }
end
