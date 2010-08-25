class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :lname
      t.string :fname
      t.string :lname_yomi
      t.string :fname_yomi
      t.string :lname_eng
      t.string :fname_eng
      t.string :username
      t.string :email
      t.string :role
      t.integer :added_by
      t.boolean :locked
      t.string :locked_reason
      t.date :locked_date
      t.text :log
      t.string :type
      t.string :passwd_encr
      t.date :passwd_set
      t.boolean :reset_passwd
      t.date :last_login
      t.boolean :active
      t.string :inactive_reason
      t.date :inactive_date

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
