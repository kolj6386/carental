class PagesController < ApplicationController
  skip_before_action :authorize_user!, only: :home
  def home
  end
end
