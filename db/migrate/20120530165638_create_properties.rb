class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :locality_id
      t.integer :user_id
      t.string :nombre
      t.string :propietario
      t.integer :num_ext
      t.text :direccion
      t.string :google
      t.text :descripcion
      t.boolean :ofertada
      t.string :catastro

      t.timestamps
    end
  end
end
