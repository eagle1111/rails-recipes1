class AdminController < ApplicationController
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  layout "admin"

  before_action :set_locale

  def set_locale
    if params[:locale] && I18n.available_locals.include?( params[:locale].to_sym )
      session[:locale] = params[:locale]
    end

    I18n.locale = session[:locale] || I18n.default_locale
  end

end
