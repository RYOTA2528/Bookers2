class User < ApplicationRecord
  attachment :profile_image
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


validates :name, presence: true, length: { minimum:2, maximum: 20 },uniqueness: true
validates :introduction, length: { maximum: 50 }

has_many :books, dependent: :destroy

end
