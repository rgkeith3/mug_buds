class Tagging < ApplicationRecord
  validates_presence_of :mug
  validates_presence_of :tag

  belongs_to :tag
  belongs_to :mug
end
