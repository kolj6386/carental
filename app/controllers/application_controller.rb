class ApplicationController < ActionController::Base
  before_action :authenticate_user!
<<<<<<< HEAD
  before_action :configure_permitted_parameters, if: :devise_controller?
=======

>>>>>>> f2047a1d822a0f4dfd4d805fb5140226c83c6f5b
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
<<<<<<< HEAD

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
=======
>>>>>>> f2047a1d822a0f4dfd4d805fb5140226c83c6f5b
end
