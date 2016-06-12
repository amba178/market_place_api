class UserSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :email, :auth_token, :created_at, :updated_at
  has_many :products 
end
