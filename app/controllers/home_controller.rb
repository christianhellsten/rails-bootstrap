# frozen_string_literal: true

class HomeController < ApplicationController
  skip_before_action :authenticate_account!

  def index; end
  def tour; end
  def pricing; end
  def features; end
end
