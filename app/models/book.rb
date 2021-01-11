class Book < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validate :title
    validate :link_to_buy
    validate :story
    validate :review
    validate :genre_id
  end
end
