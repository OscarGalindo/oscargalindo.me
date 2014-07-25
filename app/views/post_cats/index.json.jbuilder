json.array!(@post_cats) do |post_cat|
  json.extract! post_cat, :id, :post_id, :category_id
  json.url post_cat_url(post_cat, format: :json)
end
