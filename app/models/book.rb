class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments

  def self.search(search)
    if search != ""
      Book.where('title LIKE(?) or author LIKE(?) or story LIKE(?) or review LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Book.all
    end
  end
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  
  with_options presence: true do
    validates :title
    validates :story
    validates :review
    validates :genre_id, numericality: { other_than: 1 }
    validates :author
    validates :image
  end


end
