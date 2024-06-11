class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable and :omniauthable
  devise :database_authenticatable, :registerable,
         :trackable, :rememberable, :validatable
  validates :name, length: {minimum: 2, maximum: 20}
has_one_attached :photo

has_many :post_users
has_many :posts, through: :post_users

end
