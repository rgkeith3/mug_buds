class Mug < ApplicationRecord
  validates_presence_of :owner

  validates :material, inclusion: { in: ["Milk Glass", "Ceramic", "Colored Glass", "Clear Glass", "Plastic", "Metal", "Other"]}

  def tag(*strings)
    strings.each do |string|
      tag = Tag.find_or_create_by(name: string)
      Tagging.create!(mug: self, tag: tag)
    end
  end

  has_many :taggings
  has_many :tags, through: :taggings

  has_many :wishes
  has_many :wishful_owners, through: :wishes, source: :user

  belongs_to :owner,
    class_name: :User
end
