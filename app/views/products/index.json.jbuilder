json.array!(@products) do |product|
  json.extract! product, :id, :codeProduct, :codeProvider, :description, :details, :category, :subcategory, :image, :price1, :price2, :price3, :cost, :isActive, :isExcent, :isInventary, :inventary, :unitSize, :expiredDate
  json.url product_url(product, format: :json)
end
