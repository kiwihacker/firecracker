class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :title
      t.text :blurb
      t.string :body
      t.integer :author_source
      t.integer :writer_id
      t.integer :source_id
      t.integer :assigned_to
      t.boolean :is_locked
      t.boolean :is_published
      t.date :published_date
      t.date :assigned_date
      t.text :log
      t.boolean :is_ok_to_publish
      t.integer :editor_id
      t.integer :publisher_id
      t.integer :category_id
      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
