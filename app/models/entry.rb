class Entry < ActiveRecord::Base
  
  has_many :images, :dependent => :destroy
  
  def self.find_all_entries
    find(:all, :order => :title)
  end
  
end
