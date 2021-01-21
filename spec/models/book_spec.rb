require 'rails_helper'

RSpec.describe Book, type: :model do
  describe '書籍投稿情報の保存' do
    before do
      @book = FactoryBot.build(:book)
    end

    it '書籍名、あらすじ、感想、ジャンル、著者名、書籍画像１枚が存在すれば登録できる' do
      expect(@book).to be_valid
    end
    it '書籍名が空では登録できない' do
      @book.title = ''
      @book.valid?
      expect(@book.errors.full_messages).to include("Title can't be blank")
    end
    it 'あらすじが空では登録できない' do
      @book.story = ''
      @book.valid?
      expect(@book.errors.full_messages).to include("Story can't be blank")
    end
    it '感想が空では登録できない' do
      @book.review = ''
      @book.valid?
      expect(@book.errors.full_messages).to include("Review can't be blank")
    end
    it 'ジャンルが空では登録できない' do
      @book.genre_id = ''
      @book.valid?
      expect(@book.errors.full_messages).to include("Genre can't be blank")
    end
    it 'ジャンルidが1では登録できない' do
      @book.genre_id = 1
      @book.valid?
      expect(@book.errors.full_messages).to include("Genre must be other than 1")
    end
    it '著者名が空では登録できない' do
      @book.author = ''
      @book.valid?
      expect(@book.errors.full_messages).to include("Author can't be blank")
    end
    it '書籍画像が空では登録できない' do
      @book.image = nil
      @book.valid?
      expect(@book.errors.full_messages).to include("Image can't be blank")

    end
  end
end
