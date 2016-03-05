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

require 'rails_helper'

describe Comic do
  it { should have_many(:strips) }
end
