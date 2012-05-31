class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.date :fecha_inicio
      t.date :fecha_final
      t.integer :property_user_id
      t.integer :descuento

      t.timestamps
    end
  end
end
