class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :type_id
      t.integer :property_id
      t.timestamps
    end
  end
end
