class Entity < ApplicationRecord
  has_one :property_list

  validates_presence_of :name, :property_list

  accepts_nested_attributes_for :property_list

  def adjust_list
    self.property_list.each do |k,v|
      if v == "1"
        k = true
      else
        k = false
      end
    end
  end

end
