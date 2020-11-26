json.extract! product, :id, :title, :price_ht, :taux_tva, :created_at, :updated_at
json.url product_url(product, format: :json)
