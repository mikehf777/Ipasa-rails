class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellidos
      t.string :telefono
      t.string :celular
      t.boolean :sexo
      t.string :email
      t.string :encrypted_password
      t.string :salt

      t.timestamps
    end
  end
end
