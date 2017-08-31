class Tag < ApplicationRecord
  has_many :taggings
  has_many :mugs, through: :taggings
end
