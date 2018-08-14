json.extract! order_report, :id, :description, :date_time, :order_id, :user_id, :created_at, :updated_at
json.url order_report_url(order_report, format: :json)
