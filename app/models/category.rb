class Category < ActiveRecord::Base
  has_many :posts, through: :post_cats
  has_many :post_cats
end
