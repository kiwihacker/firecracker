class Role < ActiveRecord::Base
  has_many :assignments
  has_many :users, :through => :assignments
  
  def self.find_role
    find(params[:id])
  end    
    
end
