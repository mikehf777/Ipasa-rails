class CreatePropertyServices < ActiveRecord::Migration
  def change
    create_table :property_services do |t|
      t.integer :property_id
      t.integer :service_id
      t.float :costo
      t.text :descripcion

      t.timestamps
    end
  end
end
