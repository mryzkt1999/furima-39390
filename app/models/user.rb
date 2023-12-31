class User < ApplicationRecord
  has_many :items
  has_many :orders

  validates :nickname, presence: true
  validates :password,
            format: { with: /\A(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]+\z/, message: ' is invalid. Include both letters and numbers' }
  validates :last_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: " is invalid. Input full-width characters
    " }
  validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: " is invalid. Input full-width characters
    " }
  validates :kana_last_name, presence: true, format: { with: /\A[ァ-ヶー]+\z/, message: " is invalid. Input full-width characters
    " }
  validates :kana_first_name, presence: true, format: { with: /\A[ァ-ヶー]+\z/, message: " is invalid. Input full-width characters
    " }
  validates :birthday, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
