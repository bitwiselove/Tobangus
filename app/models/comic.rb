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

class Comic < ActiveRecord::Base
  has_many :strips, dependent: :destroy
end
