class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
    end

    def after_sign_in_path_for(resource)
        user_profile_path
    end

    end
    def after_update_path_for(resource)
        edit_user_registration_path(resource)
    end

