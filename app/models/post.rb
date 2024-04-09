class Post < ApplicationRecord
  validates :title, :body, :address, :count, :play, :price, {presence: true}
  validates :body, length: { maximum: 140 }
  validates :user_id, {presence: true}
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  def favorited?(user)
    if user.present?
      favorites.where(user_id: user.id).exists?
    end
  end

  def favorite_count(post)
    favorites.where(post_id: post.id).count
  end
end
