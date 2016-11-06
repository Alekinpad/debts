json.extract! debt, :id, :description, :amount, :category_id, :created_at, :updated_at
json.url debt_url(debt, format: :json)