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

require 'rails_helper'

describe Comic do
  it { should have_many(:strips) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:series) }
end
