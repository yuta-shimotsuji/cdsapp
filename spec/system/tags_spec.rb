require 'rails_helper'

RSpec.describe "Tags", type: :system do
  before do
    driven_by(:rack_test)
    visit new_user_session_path
    @user = create(:user, email: 'email@example.com', password: 'password', password_confirmation: 'password')
    @post = create(:post, user: @user)
    @Favorite = create(:favorite, user_id: @user.id, post_id: @post.id)
    @tag1 = create(:tag, name: "タグ1") 
    @tag2 = create(:tag, name: "タグ2") 
    fill_in 'user[email]', with: 'email@example.com'
    fill_in 'user[password]', with: 'password'
    click_button 'Log in'
    visit root_path
  end

  describe '新規投稿のタグ付けについて' do
    context '投稿時に1件のタグを指定' do
      it 'タグ付けが成功する' do
        fill_in 'post[title]', with: '東京駅'
        fill_in 'post[body]', with: '東京の中心地'
        fill_in 'post[address]', with: '東京都千代田区丸の内１丁目'
        fill_in 'post[count]', with: '11'
        fill_in 'post[play]', with: 'でかい'
        fill_in 'post[price]', with: '10000'
        check 'タグ1'
        click_button '登録する'
        expect(page).to have_content 'タグ1'
      end
    end
    context '投稿時に複数件のタグを指定' do
      it 'タグ付けが成功する' do
        fill_in 'post[title]', with: '東京駅'
        fill_in 'post[body]', with: '東京の中心地'
        fill_in 'post[address]', with: '東京都千代田区丸の内１丁目'
        fill_in 'post[count]', with: '11'
        fill_in 'post[play]', with: 'でかい'
        fill_in 'post[price]', with: '10000'
        check 'タグ1'
        check 'タグ2'
        click_button '登録する'
        expect(page).to have_content 'タグ1'
        expect(page).to have_content 'タグ2'
      end
    end
  end
end
