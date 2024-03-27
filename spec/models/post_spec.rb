require 'rails_helper'

RSpec.describe Post, type: :model do

  let(:user) { create(:user) }
  let(:post) { create(:post, user: user) }
  let(:user_favorite) { create(:user) }
  let(:post_favorite) { create(:post, user: user_favorite) }
  let(:favorite) { create(:favorite, user_id: user_favorite.id, post_id: post_favorite.id) }
  let(:user_favorited?) { create(:user) }
  let(:post_favorited?) { create(:post, user: user_favorited? ) }
  let!(:favorite_favorited?) { create(:favorite, user_id: user_favorited?.id, post_id: post_favorited?.id) }

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
      @user = create(:user)
      @post_title_length_check = build(:post, body: 'a' * 141, user: @user)
      expect(@post_title_length_check).to be_invalid
    end

    it 'ユーザーが含まれる必要があること' do
      @post_user_id_check = build(:post)
      expect(@post_user_id_check).to be_invalid
    end
  end

  describe '作成したメソッドに関するテスト' do  

    it 'favorited?メソッド(いいねの有無を確認をするメソッド)' do
      expect(post_favorited?.favorited?(user_favorited?)).to eq(true)
    end

    it 'favorite_countメソッド(いいねの数を数えるメソッド)' do
      expect(post_favorited?.favorite_count(post_favorited?)).to eq(1)
    end
  end
end
