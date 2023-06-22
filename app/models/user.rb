class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  has_many :posts
  has_many :comments
  has_many :likes

  validates :name, presence: true, length: { maximum: 100 }
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  def recent_posts
    Post.where(author_id: id).order(created_at: :desc).limit(3)
  end

  def is?(requested_role)
    role == requested_role.to_s
  end
end
