FactoryBot.define do
  factory :book do
    title      { '書籍名' }
    author     { '著者' }
    story      { 'あらすじ' }
    review     { 'とても良い本でした' }
    genre_id   { 2 }
    association :user

    after(:build) do |book|
      book.image.attach(io: File.open('public/images/test.png'), filename: 'test.png')
    end
  end
end
 