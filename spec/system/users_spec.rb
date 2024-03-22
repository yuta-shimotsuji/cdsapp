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
    describe 'ユーザー編集' do
      context 'フォームの入力値が正常' do
        it 'ユーザーの編集が成功する'
      end
      context 'メールアドレスが未入力' do
        it 'ユーザーの編集が失敗する'
      end
      context '他ユーザーの編集ページにアクセス' do
        it '編集ページへのアクセスが失敗する'
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
