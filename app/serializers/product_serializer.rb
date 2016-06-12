class ProductSerializer < ActiveModel::Serializer
  attributes :id, :price, :title, :published 
  belongs_to :user 
end
