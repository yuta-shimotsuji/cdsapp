require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:user) { create(:user) }
  let(:posts) { create_list(:post, 3, user: user) }
  let(:user_favorite) { create(:user) }
  let(:post_favorite) { create(:post, user: user_favorite) }
  let(:favorite) { create(:favorite, user_id: user_favorite.id, post_id: post_favorite.id) }

  describe '投稿の関連付けに関するテスト' do  

    it 'Userモデルとの紐付けが正しくできていること' do
    end

    it 'Favoriteモデルとの紐付けが正しくできていること' do
    end
  end

  describe '投稿のバリデーションに関するテスト' do  

    it '空のデータがあれば投稿できない状態にできていること' do
    end

    it 'bodyの文字制限が140以下であること' do
    end

    it 'ユーザーidが含まれること' do
    end
  end

  describe '作成したメソッドに関するテスト' do  

    it 'favorited?メソッド' do
    end

    it 'favorite_countメソッド' do
    end
  end
end
