require 'rails_helper'

RSpec.describe Comment, type: :model do

  let(:user) { create(:user) }
  let(:post) { create(:post, user: user) }

  describe 'コメント投稿に関するテスト' do
    it 'コメントが入力済みであれば投稿できる' do
    end

    it 'コメントが空では投稿できない' do
    end

    it 'ログイン済みでないと投稿ができない' do
    end
    
    it '投稿がないとコメントができない' do
    end
  end
end
