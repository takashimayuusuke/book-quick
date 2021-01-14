class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :book_authors
  has_many :authors, through: :book_authors

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :genre


end
