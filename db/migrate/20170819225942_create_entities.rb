class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.boolean :alive

      t.timestamps
    end
  end
end
