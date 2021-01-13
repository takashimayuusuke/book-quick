class Book < ApplicationRecord
  belongs_to :user
  has_many :book_authors
  has_many :authors, thorough: :book_authors

  extend ActiveHash::Associations::ActiveRecoedExtensions
  belongs_to :genre


  with_options presence: true do
  validates :title
  validates :story
  validates :review
  validates :genre_id, numericality: { other_than: 1 }
  end
end
