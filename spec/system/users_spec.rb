require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'ログイン前' do
    describe 'ユーザー新規登録' do
      context 'フォームの入力値が正常' do
        it 'ユーザーの新規作成が成功する' do
          visit new_user_registration_path
          fill_in 'user[name]', with: 'example_man'
          fill_in 'user[email]', with: 'email@example.com'
          fill_in 'user[password]', with: 'password'
          fill_in 'user[password_confirmation]', with: 'password'
          click_button 'Sign up'
          expect(page).to have_content 'アカウント登録が完了しました'
        end
      end
      context 'メールアドレスが未入力' do
        it 'ユーザーの新規作成が失敗する' do
          visit new_user_registration_path
          fill_in 'user[name]', with: 'example_man'
          fill_in 'user[email]', with: nil
          fill_in 'user[password]', with: 'password'
          fill_in 'user[password_confirmation]', with: 'password'
          click_button 'Sign up'
          expect(page).to have_content 'メールアドレスが入力されていません'
        end
      end
      context '登録済のメールアドレスを使用' do
        it 'ユーザーの新規作成が失敗する' do
          visit new_user_registration_path
          existed_user = create(:user)
          fill_in 'user[name]', with: 'example_man'
          fill_in 'user[email]', with: existed_user.email
          fill_in 'user[password]', with: 'password'
          fill_in 'user[password_confirmation]', with: 'password'
          click_button 'Sign up'
          expect(page).to have_field 'user[email]', with: existed_user.email
        end
      end
    end
  end
 
  describe 'ログイン後' do
    before do
      visit new_user_session_path
      user = create(:user, email: 'email@example.com', password: 'password', password_confirmation: 'password')
      fill_in 'user[email]', with: 'email@example.com'
      fill_in 'user[password]', with: 'password'
      click_button 'Log in'
      visit edit_user_registration_path(user)
    end
    describe 'ユーザー編集' do
      context 'フォームの入力値が正常' do
        it 'ユーザーの編集が成功する' do
          fill_in 'user[email]', with: 'edit@example.com'
          fill_in 'user[current_password]', with: 'password'
          click_button 'Update'
          expect(page).to have_content 'アカウント情報を変更しました'
        end
      end
      context 'メールアドレスが未入力' do
        it 'ユーザーの編集が失敗する' do
          fill_in 'user[email]', with: nil
          fill_in 'user[current_password]', with: 'password'
          click_button 'Update'
          expect(page).to have_content 'メールアドレスが入力されていません'
        end
      end
      context '現在のパスワードが未入力' do
        it 'ユーザーの編集が失敗する' do
          fill_in 'user[email]', with: 'edit@example.com'
          fill_in 'user[current_password]', with: nil
          click_button 'Update'
          expect(page).to have_content '現在のパスワードが入力されていません'
        end
      end
      context '他ユーザーの編集ページにアクセス' do
        it '編集ページへのアクセスが失敗する(自分のページがレンダリングされる)' do
          user2 = create(:user)
          visit edit_user_registration_path(user2)
          expect(page).to have_field 'user[email]', with: 'email@example.com'
        end
      end
    end
 
    describe 'マイページ' do
      context '投稿一覧ページにアクセス' do
        it '自分の投稿が表示される'
      end
      context 'いいね一覧ページにアクセス' do
        it 'いいねした投稿が表示される'
      end
    end
  end
end
