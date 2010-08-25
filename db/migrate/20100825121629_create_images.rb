class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.integer :entry_id
      t.string :image_url
      t.string :image_credit
      t.date :image_date
      t.text :image_caption

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
