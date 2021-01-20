class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, format: { with: VALID_EMAIL_REGEX }

  with_options presence: true do
    validates :nickname
    validates :name, format: { with: /\A[一-龥ぁ-ん]/ }
    validates :name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :birth
  end

  def self.search(search)
    if search != ""
      User.where('name LIKE(?) or nickname LIKE(?)' , "%#{search}%", "%#{search}%")
    else
      Book.all
    end
  end

end
