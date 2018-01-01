json.extract! purchase, :id, :common_name, :specific_name, :category_id, :shop_id, :price, :quantity, :subquantity, :denomination_id, :is_sale, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
