class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
  #   for welcome or dashboard page
  end
end
