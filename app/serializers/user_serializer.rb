class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password, :email, :numSold, :location, :funds, :items, :messages
end
