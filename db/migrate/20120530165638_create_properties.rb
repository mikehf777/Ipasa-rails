class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :nombre
      t.integer :num_ext
      t.text :direccion
      t.string :google
      t.text :descripcion
      t.boolean :ofertada
      t.integer :locality_id

      t.timestamps
    end
  end
end
