json.extract! post_user, :id, :post_id, :User_id, :created_at, :updated_at
json.url post_user_url(post_user, format: :json)
