class CreatePropertyStructures < ActiveRecord::Migration
  def change
    create_table :property_structures do |t|
      t.integer :property_id
      t.integer :structure_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
