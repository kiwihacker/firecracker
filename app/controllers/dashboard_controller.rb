class DashboardController < ApplicationController
  
  def index
    @entries = Entry.find_all_entries
  end

end
