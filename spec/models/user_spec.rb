require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザーの関連付けに関するテスト' do

    let(:user) { create(:user) }
    let(:posts) { create_list(:post, 3, user: user) }
  
    it 'Postモデルとの紐付けが正しくできていること' do
      expect([user.posts]).to include posts
    end
  end
end
