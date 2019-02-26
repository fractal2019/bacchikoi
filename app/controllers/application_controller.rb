class ApplicationController < ActionController::Base

		before_action :configure_permitted_parameters, if: :devise_controller?

		protect_from_forgery with: :exception

  		helper_method :current_cart

		  def current_cart
		    if session[:cart_id]
		      @cart = Cart.find(session[:cart_id])
		    else
		      @cart = Cart.create
		      session[:cart_id] = @cart.id
		    end
		  end

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :address, :postal_code, :tel])
	end
end
