class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception #Rails edge method
end
