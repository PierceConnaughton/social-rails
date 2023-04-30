class ApplicationController < ActionController::Base
    include Devise::Controllers::Helpers

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name, :email, :password])
    end

    def after_sign_out_path_for(resource_or_scope)
        root_path
    end
      

    helper_method :resource, :resource_name, :devise_mapping
end
