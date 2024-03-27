require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'いいね機能の関連付けに関するテスト' do

    let(:user_favorite) { create(:user) }
    let(:post_favorite) { create(:post, user: user_favorite) }
    let(:favorite) { create(:favorite, user_id: user_favorite.id, post_id: post_favorite.id) }
  
    it 'Post,Userモデルと紐付けが正しくできていること' do
      expect(favorite).to be_valid
    end
  end
end
