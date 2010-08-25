class ChangeEntryBodyType < ActiveRecord::Migration
  def self.up
    change_column :entries, :body, :text
  end

  def self.down
    change_column :entries, :body, :string
  end
end
