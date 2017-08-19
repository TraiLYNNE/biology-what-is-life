class PopertyListSerializer < ActiveModel::Serializer
  attributes :id, :entity_id, :organization, :metabolism, :homeostasis, :growth, :reproduction, :response, :evolution
end
