class CreatePropertyUsers < ActiveRecord::Migration
  def change
    create_table :property_users do |t|
      t.integer :property_id
      t.integer :user_id

      t.timestamps
    end
  end
end
