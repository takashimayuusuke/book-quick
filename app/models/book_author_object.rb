class BookAuthorObject

  include ActiveModel::Model


  attr_accessor :title, :story, :review, :genre_id, :user_id, :image, :name

  with_options presence: true do
    validates :title
    validates :story
    validates :review
    validates :genre_id, numericality: { other_than: 1 }
    validates :name
    validates :image
    end

    def save
      book = Book.create(title: title, story: story, review: review, genre_id: genre_id, image: image, user_id: user_id)
      author = Author.where(name: name).first_or_initialize
      author.save

      BookAuthor.create(book_id: book.id, author_id: author.id)
    end

  end