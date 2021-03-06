require 'digest/sha1'

class User < ActiveRecord::Base
  #Relationships
  has_many :assignments
  has_many :roles, :through => :assignments
  
  #Validations
  validates_presence_of :lname, :fname, :email, :username
  validates_uniqueness_of :username, :email
  
  attr_accessor :password_confirmation
  validates_confirmation_of :password  
  
  validate :password_non_blank
  
  # 'password' is a virtual attribute
  
  def password
    @password
  end
  
  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.passwd_encr = User.encrypted_password(self.password, self.salt)
  end
  
  def self.authenticate(username, password)
    user = self.find_by_username(username)
    if user
      expected_password = encrypted_password(password, user.salt)
      if user.passwd_encr != expected_password
        user = nil
      end
    end
    user
  end
    
private 
  
  def password_non_blank
    errors.add(:password, "Missing Password") if passwd_encr.blank?
  end
  
  def self.encrypted_password(password, salt)
    string_to_hash = password + "wibble" + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end
  
  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  
end
