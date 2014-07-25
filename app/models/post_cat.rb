class PostCat < ActiveRecord::Base
  belongs_to :post
  belongs_to :category
end
