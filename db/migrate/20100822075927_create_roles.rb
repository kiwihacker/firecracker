class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :role
      t.string :role_j
      t.string :desc
      t.string :desc_j

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
