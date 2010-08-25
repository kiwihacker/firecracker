class AddFieldsToEntry < ActiveRecord::Migration
  def self.up
    add_column :entries, :assigned_by, :integer
    add_column :entries, :status_id, :integer
    add_column :entries, :status_change_date, :date
    add_column :entries, :created_date, :date
    add_column :entries, :edited_date, :date
    add_column :entries, :edited_by, :integer
    add_column :entries, :archived_date, :date
    add_column :entries, :archived_by, :integer
    add_column :entries, :cancelled_date, :date
    add_column :entries, :cancelled_by, :integer
    add_column :entries, :category_id_2, :integer
    add_column :entries, :category_id_3, :integer
    add_column :entries, :publication_id, :integer

  end

  def self.down
    remove_column :entries, :assigned_by
    remove_column :entries, :status_id    
    remove_column :entries, :status_change_date
    remove_column :entries, :created_date
    remove_column :entries, :edited_date
    remove_column :entries, :edited_by
    remove_column :entries, :archived_date
    remove_column :entries, :archived_by
    remove_column :entries, :cancelled_date
    remove_column :entries, :cancelled_by
    remove_column :entries, :category_id_2
    remove_column :entries, :category_id_3
    remove_column :entries, :publication_id
  end
end
