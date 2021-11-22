class ApplicationController < ActionController::Base
  before_action :authorize_user!
end
