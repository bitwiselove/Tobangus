# == Schema Information
#
# Table name: comics
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ComicsController < ApplicationController
  def show
    @comic = Comic.find(params[:id])
  end
end
