class Admin::ComicsController < ApplicationController
  before_action :require_login

  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)

    if @comic.save
      flash[:success] = 'Comic created!'
      redirect_to edit_admin_comic_path(@comic)
    else
      flash.now[:error] = 'Could not save comic'
      render action: :new
    end
  end

  def edit
    @comic = Comic.find(params[:id])
  end

  def update
    @comic = Comic.find(params[:id])

    if @comic.update(comic_params)
      flash[:success] = 'Comic updated!'
      redirect_to edit_admin_comic_path(@comic)
    else
      flash.now[:error] = 'Could not update comic'
      render action: :edit
    end
  end

  private

  def comic_params
    params.require(:comic).permit(:title, :description, :series, :preview)
  end
end
