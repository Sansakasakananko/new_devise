class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable and :omniauthable
  devise :database_authenticatable, :registerable,
         :trackable, :rememberable, :validatable
  validates :name, presence: true,  length: {minimum: 2, maximum: 20}
  has_one_attached :photo

  def icon(a, b)
    photo.variant(resize_to_fill:[a, b])
  end

end
