class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :numSold, :location, :funds, :items
end
