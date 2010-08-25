class CreatePublications < ActiveRecord::Migration
  def self.up
    create_table :publications do |t|
      t.string :pub_name
      t.string :pub_name_yomi
      t.string :pub_name_eng

      t.timestamps
    end
  end

  def self.down
    drop_table :publications
  end
end
