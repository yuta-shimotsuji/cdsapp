require 'rails_helper'

RSpec.describe "Comments", type: :system do
  before do
    driven_by(:rack_test)
    visit new_user_session_path
    @user = create(:user, name:'test_men', email: 'email@example.com', password: 'password', password_confirmation: 'password')
    @post = create(:post, user: @user)
    fill_in 'user[email]', with: 'email@example.com'
    fill_in 'user[password]', with: 'password'
    click_button 'Log in'
    visit post_path(@post)
  end

  describe '投稿機能について' do
    context 'コメントを入れて投稿ボタンを押した場合' do
      it '投稿に成功する' do
      end
    end
    context 'コメントを入れずに投稿ボタンを押した場合' do
      it '投稿に失敗する' do
      end
    end
  end

  describe '投稿削除について' do
    context '削除ボタンを押した場合' do
      it '投稿削除に成功する' do
      end
    end
  end
end
