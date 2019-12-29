# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_account!
  layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller? || account_signed_in?
      "devise"
    else
      "application"
    end
  end
end
