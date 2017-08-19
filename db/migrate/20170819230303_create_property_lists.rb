class CreatePropertyLists < ActiveRecord::Migration[5.0]
  def change
    create_table :property_lists do |t|
      t.boolean :organization, default: false
      t.boolean :metabolism, default: false
      t.boolean :homeostasis, default: false
      t.boolean :growth, default: false
      t.boolean :reproduction, default: false
      t.boolean :response, default: false
      t.boolean :evolution, default: false

      t.integer :entity_id

      t.timestamps
    end
  end
end
