class Blog < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :users, through: :owners
  has_many :owners
  has_many :post_users, through: :post, source: :user
  validates :name, :description, presence: true
  has_many :comments, as: :imageable
end
