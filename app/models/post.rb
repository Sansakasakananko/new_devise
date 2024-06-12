class Post < ApplicationRecord
  belongs_to:user
  validates :context, presence: true, length: {maximum: 200}
end
