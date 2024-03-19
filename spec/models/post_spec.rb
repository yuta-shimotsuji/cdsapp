require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:user) { create(:user) }
  let(:post) { create(:post, user: user) }
  let(:user_favorite) { create(:user) }
  let(:post_favorite) { create(:post, user: user_favorite) }
  let(:favorite) { create(:favorite, user_id: user_favorite.id, post_id: post_favorite.id) }

  describe '投稿の関連付けに関するテスト' do  

    it 'Userモデルとの紐付けが正しくできていること' do
      expect([post.user]).to include user
    end

    it 'Favoriteモデルとの紐付けが正しくできていること' do
      expect(favorite).to be_valid
    end
  end

  describe '投稿のバリデーションに関するテスト' do  

    it 'titleカラムが空だと投稿できない状態にできていること' do
      @user = create(:user)
      @post_title_check = build(:post, title: nil, user: @user)
      expect(@post_title_check).to be_invalid
    end

    it 'bodyが空だと投稿できない状態にできていること' do
      @user = create(:user)
      @post_body_check = build(:post, body: nil, user: @user)
      expect(@post_body_check).to be_invalid
    end

    it 'addressが空だと投稿できない状態にできていること' do
      @user = create(:user)
      @post_address_check = build(:post, address: nil, user: @user)
      expect(@post_address_check).to be_invalid
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
