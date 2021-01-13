class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '経済' },
    { id: 3, name: '経営' },
    { id: 4, name: 'ビジネス' },
    { id: 5, name: 'マーケティング・広告' },
    { id: 6, name: '貿易' },
    { id: 7, name: '金融' },
    { id: 8, name: '投資' },
    { id: 9, name: '産業' },
    { id: 10, name: '自己啓発' }
  ]

  include ActiveHash::Associations
  has_many :books
end
