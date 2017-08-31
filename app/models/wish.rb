class Wish < ApplicationRecord
  validates_presence_of :user
  validates_presence_of :mug

  belongs_to :user
  belongs_to :mug
end
