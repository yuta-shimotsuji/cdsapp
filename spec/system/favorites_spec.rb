require 'rails_helper'

RSpec.describe "Favorites", type: :system do
  before do
    driven_by(:rack_test)
    visit new_user_session_path
    @user = create(:user, email: 'email@example.com', password: 'password', password_confirmation: 'password')
    @post = create(:post, user: @user)
    @Favorite = create(:favorite, user_id: @user.id, post_id: @post.id)
    fill_in 'user[email]', with: 'email@example.com'
    fill_in 'user[password]', with: 'password'
    click_button 'Log in'
    visit root_path
  end

  describe 'いいね機能について' do
    context 'いいねしていない状態でボタンをクリック' do
      it 'いいねが追加される' 
    end
    context 'いいね済みの状態でボタンをクリック' do
      it 'いいねが削除される' 
    end
  end
end
