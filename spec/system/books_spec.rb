require 'rails_helper'

def basic_pass(path)
  username = ENV["BASIC_AUTH_USER"]
  password = ENV["BASIC_AUTH_PASSWORD"]
  visit "http://#{username}:#{password}@#{Capybara.current_session.server.host}:#{Capybara.current_session.server.port}#{path}"
end


RSpec.describe "書籍投稿", type: :system do
  before do
    @user = FactoryBot.create(:user)
    @book = FactoryBot.create(:book)
  end

  context '書籍投稿ができるとき' do
    it 'ログインしたユーザーは新規投稿できる' do
      # トップページへ移動する
      basic_pass root_path
      visit root_path  
      # トップページにログインページへ遷移するボタンがあることを確認する
      expect(page).to have_content('ログイン')
      # ログインする
      visit new_user_session_path
      fill_in 'email', with: @user.email
      fill_in 'password', with:@user.password
      find('input.login-red-btn').click
      expect(current_path).to eq root_path
      # 新規投稿ページへのリンクがあることを確認する
      expect(page).to have_content('投稿する')
      # 投稿ページへ移動する
      visit new_book_path
      # フォームに情報を入力する
      image_path = Rails.root.join('public/images/test.png')
      attach_file('book[image]',image_path, make_visible: true)
      fill_in 'title', with: @book.title
      fill_in 'author', with: @book.author
      fill_in 'story', with: @book.story
      fill_in 'book-review', with: @book.review
      select '経済', from: "book-genre-status"

      # 投稿するボタンを押すとbookモデルのカウントが1上がることを確認する
      expect{find('input.sell-btn').click}.to change {Book.count }.by(1)
      # トップページへ遷移する
      expect(current_path).to eq root_path
      # トップページには先ほど投稿した内容が存在する(画像)
      expect(page).to have_selector("img[src$='test.png']")
      # トップページには先ほど投稿した内容が存在する(書籍名)
      expect(page).to have_content(@book_title)
      # トップページには先ほど投稿した内容が存在する(著者名)
      expect(page).to have_content(@book_author)
      # トップページには先ほど投稿した内容が存在する(あらすじ)
      expect(page).to have_content(@book_story)
      # トップページには先ほど投稿した内容が存在する(投稿者)
      expect(page).to have_content(@user_name)
    end
  end

  context '書籍投稿ができないとき' do
    it 'ログインしていないと新規投稿ページへ遷移できない' do
      # トップページへ移動する
      basic_pass root_path
      visit root_path
      # 新規投稿ページへのリンクがあることを確認する
      expect(page).to have_content('投稿する')
      # 投稿ページへ移動する
      visit new_user_session_path
    end
  end

  context '書籍投稿ができないとき' do
    it '誤った情報では投稿ができず新規投稿ページへ戻ってくる' do
      # トップページへ移動する
      basic_pass root_path
      visit root_path  
      # トップページにログインページへ遷移するボタンがあることを確認する
      expect(page).to have_content('ログイン')
      # ログインする
      visit new_user_session_path
      fill_in 'email', with: @user.email
      fill_in 'password', with:@user.password
      find('input.login-red-btn').click
      expect(current_path).to eq root_path
      # 新規投稿ページへのリンクがあることを確認する
      expect(page).to have_content('投稿する')
      # 投稿ページへ移動する
      visit new_book_path
      # フォームに情報を入力する
      image_path = Rails.root.join('public/images/test.png')
      attach_file('book[image]',image_path, make_visible: true)
      fill_in 'title', with: ""
      fill_in 'author', with: ""
      fill_in 'story', with: ""
      fill_in 'book-review', with: ""
      select '経済', from: "book-genre-status"

      # 投稿するボタンを押すとbookモデルのカウントが上がらないことを確認する
      expect{find('input.sell-btn').click}.to change {Book.count }.by(0)
      # トップページへ遷移する
      expect(current_path).to eq "/books"
    end
  end
end
