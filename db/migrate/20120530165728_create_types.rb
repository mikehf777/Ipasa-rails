class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
