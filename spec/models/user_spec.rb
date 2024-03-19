require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザーの関連付けに関するテスト' do

    let(:user) { create(:user) }
    let(:posts) { create_list(:post, 3, user: user) }
    let(:user_favorite) { create(:user) }
    let(:post_favorite) { create(:post, user: user_favorite) }
    let(:favorite) { create(:favorite, user_id: user_favorite.id, post_id: post_favorite.id) }
  
    it 'Postモデルとの紐付けが正しくできていること' do
      expect([user.posts]).to include posts
    end

    it 'Favoriteモデルとの紐付けが正しくできていること' do
      expect(favorite).to be_valid
    end
  end
end
