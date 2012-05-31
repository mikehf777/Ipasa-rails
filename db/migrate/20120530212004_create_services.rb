class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
