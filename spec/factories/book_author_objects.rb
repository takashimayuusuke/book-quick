FactoryBot.define do
  factory :book_author_object do
    title      { '書籍名 ' }
    story      { 'あらすじ ' }
    review     { 'とても良い本でした ' }
    genre_id   { 2 }
    name       { '著者名' }

    after(:build) do |book_author_object|
      book_author_object.image.attach(io: File.open('public/images/test.png'), filename: 'test.png')
    end
  end
end
