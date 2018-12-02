class Post < ActiveRecord::Base
  belongs_to :blog
  belongs_to :user
  has_many :messages, as: :imageable, dependent: :destroy
  validates :title, :content, presence: true
  validates :title, length: {minimum: 7}
  has_many :comments, as: :imageable
end
