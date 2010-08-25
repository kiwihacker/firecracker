class Assignment < ActiveRecord::Base
  belongs_to :publication, :class_name => "Publication"
  belongs_to :user, :class_name => "User"
  belongs_to :role, :class_name => "Role"
  
  def self.all
    find(:all, :order => "publication_id, role_id, user_id")
  end
  
  # For user login, find a role_id for a user_id/publication_id coupling
  def self.find_role_at_login(user, publication)
    @assignment = find(:all, :conditions => {:user_id => user, :publication_id => publication})
    if @assignment
      @assignment[0]
    end
  end
  
end
