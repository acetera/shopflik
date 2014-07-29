json.array!(@products) do |product|
  json.extract! product, :id, :brand, :name, :description, :image_one, :image_two, :image_three, :image_four, :category_one, :category_2, :season, :original_price, :current_prive, :percentage_off, :product_url
  json.url product_url(product, format: :json)
end
