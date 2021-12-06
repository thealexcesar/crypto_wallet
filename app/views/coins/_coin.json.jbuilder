json.extract! coin, :id, :coin_name, :acronym, :url_image, :created_at, :updated_at
json.url coin_url(coin, format: :json)
