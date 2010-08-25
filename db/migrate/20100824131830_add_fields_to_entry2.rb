class AddFieldsToEntry2 < ActiveRecord::Migration
  def self.up
    remove_column :entries, :editor_id
    remove_column :entries, :publisher_id
    remove_column :entries, :is_ok_to_publish
  end

  def self.down
    add_column :entries, :is_ok_to_publish, :boolean
    add_column :entries, :editor_id, :integer
    add_column :entries, :publisher_id, :integer
  end
end
