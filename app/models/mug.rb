class Mug < ApplicationRecord
  validates_presence_of :owner

  validates :material, inclusion: { in: ["Milk Glass", "Ceramic", "Colored Glass", "Clear Glass", "Plastic", "Metal", "Other"]}

  belongs_to :owner,
    class_name: :User
end
