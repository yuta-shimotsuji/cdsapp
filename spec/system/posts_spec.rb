require 'rails_helper'

RSpec.describe "Posts", type: :system do
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

  describe '新規投稿について' do
    context 'フォームの入力値が正常' do
      it '新規投稿が成功する' do
        fill_in 'post[title]', with: '東京駅'
        fill_in 'post[body]', with: '東京の中心地'
        fill_in 'post[address]', with: '東京都千代田区丸の内１丁目'
        click_button '登録する'
        expect(page).to have_content '投稿しました'
      end
    end
    context 'エリアが未記入' do
      it '新規投稿が失敗する' do
        fill_in 'post[title]', with: nil
        fill_in 'post[body]', with: '東京の中心地'
        fill_in 'post[address]', with: '東京都千代田区丸の内１丁目'
        click_button '登録する'
        expect(page).to have_content 'エリアが入力されていません'
      end
    end
    context 'メモが未記入' do
      it '新規投稿が失敗する' do
        fill_in 'post[title]', with: '東京駅'
        fill_in 'post[body]', with: nil
        fill_in 'post[address]', with: '東京都千代田区丸の内１丁目'
        click_button '登録する'
        expect(page).to have_content 'メモが入力されていません'
      end
    end
    context '住所が未記入' do
      it '新規投稿が失敗する' do
        fill_in 'post[title]', with: '東京駅'
        fill_in 'post[body]', with: '東京の中心地'
        fill_in 'post[address]', with: nil
        click_button '登録する'
        expect(page).to have_content '住所が入力されていません'
      end
    end
  end

  describe '投稿編集について' do
    context 'フォームの入力値が正常' do
      it '投稿編集が成功する' 
    end
    context 'エリアが未記入' do
      it '投稿編集が失敗する' 
    end
    context 'メモが未記入' do
      it '投稿編集が失敗する' 
    end
    context '住所が未記入' do
      it '投稿編集が失敗する' 
    end
    context '投稿削除ボタンをクリック' do
      it '投稿削除に成功する' 
    end
  end

  describe '検索機能について' do
    context '投稿されているワードで検索をかける' do
      it 'ワードに関連する投稿が表示される' 
    end
    context '投稿されていないワードで検索をかける' do
      it '投稿データがゼロで、エラーなくページが表示される' 
    end
  end
end
