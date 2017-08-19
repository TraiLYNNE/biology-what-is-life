class EntitySerializer < ActiveModel::Serializer
  attributes :id, :name, :alive
  has_one :property_list
end
