class Post < ActiveRecord::Base
  has_many :categories, through: :post_cats
  has_many :post_cats
end
