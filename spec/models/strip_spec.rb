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

require 'rails_helper'

describe Strip do
  it { should belong_to(:comic) }

  it { should have_attached_file(:content) }
  it { should validate_attachment_presence(:content) }
end
