class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.integer :role_id
      t.integer :user_id
      t.integer :publication_id
      t.boolean :active
      t.date :assigned_date
      t.date :deactivated_date
      t.string :deactivated_reason
      t.integer :assigned_by_user

      t.timestamps
    end
  end

  def self.down
    drop_table :assignments
  end
end
