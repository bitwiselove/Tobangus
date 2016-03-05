class PortalsController < ApplicationController
  def index
    @featured_comics = Comic.featured
  end
end
