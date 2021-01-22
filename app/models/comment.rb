class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :book

  with_options presence: true do
    validates :content
    validates :user_id
    validates :book_id
  end
end
