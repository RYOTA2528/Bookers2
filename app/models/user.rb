class User < ApplicationRecord
  attachment :profile_image
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :books, dependent: :destroy

validates :name, presence: true

end
