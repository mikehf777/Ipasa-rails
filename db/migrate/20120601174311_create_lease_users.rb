class CreateLeaseUsers < ActiveRecord::Migration
  def change
    create_table :lease_users do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
