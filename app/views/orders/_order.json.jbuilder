json.extract! order, :id, :open, :date_opened, :date_closed, :user_id, :created_at, :updated_at
json.url order_url(order, format: :json)
