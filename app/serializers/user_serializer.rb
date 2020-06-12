class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :created_at, :jti
end
