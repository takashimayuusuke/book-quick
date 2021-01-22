require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'コメント投稿情報の保存' do
    before do
      @comment = FactoryBot.build(:comment)
    end

    it 'ユーザーid、ブックid、コメントが存在すれば保存できる' do
      expect(@comment).to be_valid
    end

    it 'ユーザーidが空では登録できない'do
      @comment.user_id = nil
      @comment.valid?
      expect(@comment.errors.full_messages).to include("User can't be blank")
    end
    
    it 'ブックidが空では登録できない'do
      @comment.book_id = nil
      @comment.valid?
      expect(@comment.errors.full_messages).to include("Book can't be blank")
    end
    
    it 'コメントが空では登録できない'do
    @comment.content = ''
    @comment.valid?
    expect(@comment.errors.full_messages).to include("Content can't be blank")
    end
  end
end
