class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    # load_and_authorize_resource

    rescue_from CanCan::AccessDenied do |exception|
        redirect_to '/', :alert => exception.message
    end
end
