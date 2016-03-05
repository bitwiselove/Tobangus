# == Schema Information
#
# Table name: strips
#
#  id                   :integer          not null, primary key
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  content_file_name    :string
#  content_content_type :string
#  content_file_size    :integer
#  content_updated_at   :datetime
#  comic_id             :integer
#

class Strip < ActiveRecord::Base
  belongs_to :comic

  has_attached_file :content, styles: { medium: '300x300>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :content, content_type: /\Aimage\/.*\Z/

  validates_presence_of :content
end
