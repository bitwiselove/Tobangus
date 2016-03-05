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
# Indexes
#
#  index_strips_on_comic_id  (comic_id)
#
# Foreign Keys
#
#  fk_rails_f912f1c14d  (comic_id => comics.id)
#

require 'rails_helper'

describe Strip do
  it { should belong_to(:comic) }

  it { should have_attached_file(:content) }
  it { should validate_attachment_presence(:content) }
end
