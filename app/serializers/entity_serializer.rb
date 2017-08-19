class EntitySerializer < ActiveModel::Serializer
  attributes :id
  has_one :property_list
end
