class Post < ApplicationRecord
  belongs_to:user
  validates :context, length: {maximum: 200}
end
