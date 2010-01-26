# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '2a55ac3f91006c7803394763372e0060'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  filter_parameter_logging :password
  
  before_filter :find_menus
  before_filter :find_cart
  private
  def find_menus
    @menus = Menu.find(:all)
  end
  
  def find_cart
    if session[:cart_id]
      @cart = Cart.find_by_id(session[:cart_id])
    else
      @cart = Cart.save(:ordered => false)
    end
  end
end
