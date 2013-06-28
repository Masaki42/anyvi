class ApplicationController < ActionController::Base

  protect_from_forgery
  
  include SessionsHelper

  def handle_unverified_request
	sign_out
    super
  end

private

  def render_404
  	render file: "public/404.html", status: 404
  end

end
