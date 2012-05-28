class ApplicationController < ActionController::Base
  protect_from_forgery
  
  layout :choose_layout

  private
  def choose_layout    
    (['registrations', 'sessions', 'navigation', 'admin'].include? controller_name and ['new', 'create', 'auth', 'index', 'admin'].include? action_name) ? 'login' : 'application'
  end

end
