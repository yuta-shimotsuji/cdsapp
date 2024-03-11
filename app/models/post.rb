class Post < ApplicationRecord
  validates :title, :body, :address, presence: true
  validates :body, length: { maximum: 140 }
  validates :user_id, {presence: true}
  belongs_to :user
  has_many :favorites, dependent: :destroy
  
  def favorited?(user)
    favorites.where(user_id: user.id).exists?
  end
end
