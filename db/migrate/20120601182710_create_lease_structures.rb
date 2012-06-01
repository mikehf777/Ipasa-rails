class CreateLeaseStructures < ActiveRecord::Migration
  def change
    create_table :lease_structures do |t|
      t.integer :structure_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
