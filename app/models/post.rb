class Post < ApplicationRecord
  belongs_to:user
  validates :context, presence: true, length: {maximum: 200}
  has_one_attached :photo

  def picture(a, b)
    photo.variant(resize_to_fill:[a, b])
  end

end
