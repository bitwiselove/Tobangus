# == Schema Information
#
# Table name: comics
#
#  id                   :integer          not null, primary key
#  title                :string
#  description          :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  series               :string
#  status               :integer          default(0)
#  preview_file_name    :string
#  preview_content_type :string
#  preview_file_size    :integer
#  preview_updated_at   :datetime
#

class Comic < ActiveRecord::Base
  enum status: [:regular, :featured]
  has_many :strips, dependent: :destroy

  has_attached_file :preview, styles: { medium: '300x300>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :preview, content_type: /\Aimage\/.*\Z/

  validates_presence_of :preview
  validates_presence_of :title
  validates_presence_of :series
end
