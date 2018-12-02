class User < ActiveRecord::Base
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_many :owners
  has_many :blogs_owned, through: :owners, source: :blog
  has_many :blogs, through: :posts
  has_many :messages
  has_many :posts
  has_many :post_messages, through: :messages, source: :post
  validates :first_name, :last_name, :email_address, presence: true
  validates :email_address, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  has_many :comments, as: :imageable
end
