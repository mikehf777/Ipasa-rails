class AddClaveToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :clave, :string
  end
end
