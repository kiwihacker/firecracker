class Image < ActiveRecord::Base
  belongs_to :entry
  attr_accessor :image_url, :image_caption, :imgage_date, :entry_id, :image_credit

end
