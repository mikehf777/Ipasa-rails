class CreateStructures < ActiveRecord::Migration
  def change
    create_table :structures do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
