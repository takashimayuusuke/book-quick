class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  before_action :set_book, only: [:show, :edit, :update, :destroy]

  before_action :set_genre

  before_action :contributor_confirmation, only: [:edit, :update, :destroy]



  
  def index

    @books = Book.includes(:user).order('created_at DESC')
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path(@book)
    else
      render action: :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @book.comments.includes(:user)
  end
    
  def edit

  end

  def update
    if @book.update(book_params)
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    if @book.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def search
    @books = Book.search(params[:keyword])
    @users = User.search(params[:keyword])
    @book_records = []

    
    @books.each do|book|
      @book_records << book
    end

    @users.each do|user|
      user.books.each do|book|
        @book_records << book
      end
    end

    @book_records = @book_records.uniq
  end
  
  def sort 
    @books = Book.sort(params[:id])
  end

  private
  
  def book_params
    params.require(:book).permit(:title, :story, :review, :genre_id, :image, :author).merge(user_id: current_user.id)
  end

  
  def set_book
    @book = Book.find(params[:id])

  end

  def set_genre
    @genre = Genre.all
  end

  def contributor_confirmation
    redirect_to root_path unless current_user.id == @book.user.id
  end

  def contributor_confirmation
    redirect_to root_path unless current_user.id == @book.user.id
  end



end