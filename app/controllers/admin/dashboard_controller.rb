class Admin::DashboardController < ApplicationController
  before_action :require_login

  def index
    @comics = Comic.all
  end
end
