require 'rails_helper'

RSpec.describe BookAuthorObject, type: :model do
  describe '書籍投稿情報の保存' do
    before do
      @book_author_object = FactoryBot.build(:book_author_object)
    end

    it '書籍名、あらすじ、感想、ジャンル、著者名、書籍画像１枚が存在すれば登録できる' do
    end
    it '書籍名が空では登録できない' do
    end
    it 'あらすじが空では登録できない' do
    end
    it '感想が空では登録できない' do
    end
    it 'ジャンルが空では登録できない' do
    end
    it 'ジャンルidが1では登録できない' do
    end
    it '著者名が空では登録できない' do
    end
    it '書籍画像が空では登録できない' do
    end
  end
end
