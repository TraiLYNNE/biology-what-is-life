class Entity < ApplicationRecord
  has_one :property_list

  validates_presence_of :name, :property_list

  accepts_nested_attributes_for :property_list
end
