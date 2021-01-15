FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    name                  { '山田太郎' }
    name_kana             { 'ヤマダタロウ' }
    email                 { Faker::Internet.free_email }
    password              { 'abc123' }
    password_confirmation { password }
    birth { '1988-12-12' }
  end
end
