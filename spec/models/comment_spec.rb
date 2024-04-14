require 'rails_helper'

RSpec.describe Comment, type: :model do

  let(:user) { create(:user) }
  let(:post) { create(:post, user: user) }

  before do
    @comment = build(:comment, user_id: user.id, post_id: post.id)
  end
  
  describe 'コメント投稿に関するテスト' do
    context 'コメントが保存できる場合'
      it 'コメントが入力済みであれば投稿できる' do
        expect(@comment).to be_valid
      end
    end

    context 'コメントが保存できない場合'
      it 'コメントが空では投稿できない' do
        @comment.content = nil
        expect(@comment).not_to be_valid
      end

      it 'ログイン済みでないと投稿ができない' do
        @comment.user_id = nil
        expect(@comment).not_to be_valid
      end
      
      it '投稿がないとコメントができない' do
        @comment.post_id = nil
        expect(@comment).not_to be_valid
      end
    end
  end
end
