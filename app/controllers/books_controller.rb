class BooksController < ApplicationController
  before_action :set_book, only: (:show)
  def index
    @books = Book.includes(:user).order('created_at DESC')
  end

  def new
    @book_author_object = BookAuthorObject.new
  end

  def create
    @book_author_object = BookAuthorObject.new(book_author_object_params)
    if @book_author_object.valid?
      @book_author_object.save
      redirect_to root_path(@book_author_object)
    else
      render action: :new
    end

    def show
    end
  end

  private

  def book_author_object_params
    params.require(:book_author_object).permit(:title, :story, :review, :genre_id, :image, :name).merge(user_id: current_user.id)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
