class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
