class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index]  # Exclude the welcome screen from authentication

  # Other methods...
end
