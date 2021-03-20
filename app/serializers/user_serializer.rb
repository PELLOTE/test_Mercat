# User Serializer
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username
end
