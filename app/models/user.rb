class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User

  def add_to_wishlist(mug)
    Wish.create!(user: self, mug: mug)
  end

  has_many :mugs, dependent: :destroy,
    foreign_key: :owner_id

  has_many :wishes, dependent: :destroy
  has_many :wishlist, through: :wishes, source: :mug
end
