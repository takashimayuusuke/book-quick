FactoryBot.define do
  factory :comment do
    content     { 'コメント' }
    association :user
    association :book
    
  end
end
