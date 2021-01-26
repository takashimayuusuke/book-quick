require 'rails_helper'

def basic_pass(path)
  username = ENV["BASIC_AUTH_USER"]
  password = ENV["BASIC_AUTH_PASSWORD"]
  visit "http://#{username}:#{password}@#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}#{path}"
end

RSpec.describe "ユーザー新規登録", type: :system do
  before do
    @user = FactoryBot.build(:user)
  end
  context 'ユーザー新規登録ができるとき' do
    it '正しい情報を入力すればユーザー新規登録ができてトップページへ移動する'do
    # トップページへ移動する
    basic_pass root_path
    visit root_path
    # トップページにサインアップページへ遷移するボタンがあることを確認する
    expect(page).to have_content('新規登録')
    # 新規登録ページへ移動する
    visit new_user_registration_path
    # ユーザー情報を入力する
    fill_in 'ニックネーム', with: @user.nickname
    fill_in 'お名前(全角)', with: @user.name
    fill_in 'お名前カナ(全角)', with: @user.name_kana
    fill_in 'メールアドレス', with: @user.email
    fill_in 'パスワード', with: @user.password
    fill_in 'パスワード(確認)', with:@user.password_confirmation
    select '1930', from: 'user_birth_1i'
    select '3', from: 'user_birth_2i'
    select '15', from: 'user_birth_3i'
    # サインアップボタンを押すとユーザーモデルのカウントが1上がることを確認する
    expect{ find('input.register-btn').click}.to change { User.count }.by(1)
    # トップページへ遷移する
    expect(current_path).to eq root_path
    # ログアウトボタンがあることを確認する
    expect(page).to have_content('ログアウト')
    # 新規登録ボタンが表示されていないことを確認する
    expect(page).to have_no_content('新規登録')

    end
  end

  context 'ユーザー新規登録ができないとき' do
    it '誤った情報ではユーザー新規登録ができずに新規登録ページへ戻ってくる' do
      # トップページへ移動する
      basic_pass root_path
      visit root_path  
      # トップページにサインアップページへ遷移するボタンがあることを確認する
      expect(page).to have_content('新規登録')
      # 新規投稿ページへ移動する
      visit new_user_registration_path
      # ユーザー情報を入力する
      fill_in 'ニックネーム', with: ""
      fill_in 'お名前(全角)', with: ""
      fill_in 'お名前カナ(全角)', with: ""
      fill_in 'メールアドレス', with: ""
      fill_in 'パスワード', with: ""
      fill_in 'パスワード(確認)', with:""
      select '--', from: 'user_birth_1i'
      select '--', from: 'user_birth_2i'
      select '--', from: 'user_birth_3i' 
      # サインアップボタンを押してもユーザーモデルのカウントは上がらないことを確認する
      expect{ find('input.register-btn').click}.to change { User.count }.by(0)
      # 新規登録ページに戻されることを確認する
      expect(current_path).to eq "/users"
    end
  end

end