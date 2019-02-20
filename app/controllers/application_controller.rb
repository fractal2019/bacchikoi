class ApplicationController < ActionController::Base

		before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :name_kana, :address, :postal_code, :tel])
	end
end
