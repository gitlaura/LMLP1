class ApplicationController < ActionController::Base
  protect_from_forgery

  #rescue_from Exception, :with => :render_404

  def render_404
    redirect_to '/404.html'
  end
end
