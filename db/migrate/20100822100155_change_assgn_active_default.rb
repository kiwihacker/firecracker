class ChangeAssgnActiveDefault < ActiveRecord::Migration
  def self.up
    change_column :assignments, :active, :boolean, :default => true
  end

  def self.down
    change_column :assignments, :active, :boolean, :default => false
  end
end
