class ItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :buyer_id, :image, :name, :price
end
