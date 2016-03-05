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

FactoryGirl.define do
  factory :strip do
    content_file_name 'test_strip.png'
    content_content_type 'image/png'
    content_file_size 1024
  end
end
